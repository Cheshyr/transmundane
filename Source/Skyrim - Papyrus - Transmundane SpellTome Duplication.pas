{
  Treat the challenging_spell_learning.esp as a dynamic patch file which can be updated based on all loaded mods.

  Just run this script and magic happens.

  Tomes updated will be listed in the Messages tab with ---------------------------------------- prefixed to make spotting errors easier.
}
unit CSL_Patch_Update;


// Find the challenging_spell_learning.esp file in the loaded plugins list and return its index
function IndexOfValidatedTIM(): integer;
var
  CSL: integer;
  j: integer;
  i: integer;
  f: IInterface;
  g: IInterface;
begin
  for CSL := FileCount - 1 downto 0 do
    if GetFileName(FileByIndex(CSL)) = 'Transmundane.esp' then break;
  if CSL = 0 then
    raise Exception.Create('Transmundane.esp must be loaded!');
  for j := FileCount - 1 downto CSL + 1 do begin
    f := FileByIndex(j);
    g := GroupBySignature(f, 'BOOK');
    if not Assigned(g) then continue;
    for i := ElementCount(g) - 1 downto 0 do
      if Assigned(ElementByPath(ElementByIndex(g, i), 'DATA\Spell')) then 
        raise Exception.Create('Transmundane.esp must load after other plugins containing spell tomes!');
  end;
  Result := CSL;
end;


// Remove existing books from patch and then insert all spell tomes found in the other plugins
procedure AddTomesToPatch(CSLfile: IInterface; CSLindex: integer);
var
  j: integer;
  i: integer;
  f: IInterface;
  g: IInterface;
  e: IInterface;
begin
  //if Assigned(GroupBySignature(CSLfile, 'BOOK')) then
  //  RemoveNode(GroupBySignature(CSLfile, 'BOOK'));
  for j := CSLindex - 1 downto 0 do begin
    f := FileByIndex(j);
    g := GroupBySignature(f, 'BOOK');
    if not Assigned(g) then continue;
    for i := ElementCount(g) - 1 downto 0 do begin
      e := ElementByIndex(g, i);
      if Assigned(ElementByPath(e, 'DATA\Spell')) then begin
        AddRequiredElementMasters(e, CSLfile, False);
        wbCopyElementToFile(e, CSLfile, False, True);
      end;
    end;
  end;
end;


// Find a usable spell description from the spell or one of its magic effects.
function FindSpellDescription(spell: IInterface): string;
var 
  i: integer;
  best: string;
  d: string;
  e: IInterface;
  mag: string;
  dur: string;
begin
  best := GetEditValue(ElementByPath(spell, 'DESC')); // use the spell's description if it exists
  if best = '' then begin  // otherwise search through the spell effects for a good desription
    e := ElementByPath(spell, 'Effects');
    for i := ElementCount(e) - 1 downto 0 do begin
      mag := GetNativeValue(ElementByPath(ElementByIndex(e,i), 'EFIT\Magnitude'));
      dur := GetNativeValue(ElementByPath(ElementByIndex(e,i), 'EFIT\Duration'));
      d := GetEditValue(ElementByPath(WinningOverride(LinksTo(ElementByPath(ElementByIndex(e,i), 'EFID'))), 'DNAM'));
      d := StringReplace(d, '<mag>', mag, [rfReplaceAll, rfIgnoreCase]);
      d := StringReplace(d, '<dur>', dur, [rfReplaceAll, rfIgnoreCase]);
      if (d <> '') and (d <> ' ') then
        best := d;
     end;
  end;
  best := StringReplace(best, '<', '', [rfReplaceAll, rfIgnoreCase]);
  best := StringReplace(best, '>', '', [rfReplaceAll, rfIgnoreCase]);
  if best = '' then
      AddMessage('No spell description found for ' + Name(spell));
  Result := best;
end;


// Find the list of scripts in a VMAD record.
function FindScripts(VMAD: IInterface): IInterface;
begin
  if Assigned(ElementByPath(VMAD, 'Scripts')) then // different paths for different versions of xEdit!
    Result := ElementByPath(VMAD, 'Scripts')
  else
    Result := ElementByPath(VMAD, 'Data\Scripts');
end;


// Find the CSL script in the VMAD record.
function FindLearningScript(VMAD: IInterface): IInterface;
var
  i: integer;
  scripts: IInterface;
begin
  scripts := FindScripts(VMAD);
  for i := ElementCount(scripts) - 1 downto 0 do
    if GetEditValue(ElementByPath(ElementByIndex(scripts,i), 'scriptName')) = 'csl_sparks_script' then
      Result := ElementByIndex(scripts, i);
end;


// Find the LearnedSpell property in the script.
function FindSpellProperty(script: IInterface): IInterface;
var 
  i: integer;
begin
  script := ElementByPath(script, 'Properties');
  for i := ElementCount(script) - 1 downto 0 do
    if GetEditValue(ElementByPath(ElementByIndex(script,i), 'propertyName')) = 'LearnedSpell' then
      Result := ElementByPath(ElementByIndex(script,i), 'Value\Object Union\Object v2\FormID');
end;


// Copy the CLS script into the spell tome then move the spell to the LearnedSpell property and clear the Teaches Spell flag on the tome.
procedure TransferSpellToLearningScript(e, spell, VMAD: IInterface);
var 
  i: integer;
  learningScript: IInterface;
  prop: IInterface;
begin
  // Copy just the spell learning script or the entire VMAD record
  if ElementExists(e, 'VMAD') then begin 
    AddMessage('Pre-existing script on spell tome ' + Name(e) + ' attempting to copy learning script.'); 
    learningScript := FindLearningScript(ElementByPath(e, 'VMAD'));
    if not Assigned(learningScript) then
      ElementAssign(FindScripts(ElementByPath(e, 'VMAD')), HighInteger, FindLearningScript(VMAD), False);
  end
  else begin
    Add(e, 'VMAD', true);
    ElementAssign(ElementByPath(e, 'VMAD'), LowInteger, VMAD, False);  // copy entire VMAD record
  end

  // Find and fill the LearnedSpell property with the actual spell entry
  learningScript := FindLearningScript(ElementByPath(e, 'VMAD'));
  if not Assigned(learningScript) then begin AddMessage('Missing csl_sparks_script for ' + Name(e)); Exit; end;
  prop := FindSpellProperty(learningScript);
  if not Assigned(prop) then begin AddMessage('Missing critical LearnedSpell property for ' + Name(e)); Exit; end;
  SetEditValue(prop, Name(spell));

  // Clear the Teaches Spell flag and Spell/Skill fields for the new scripted spell tome
  SetNativeValue(ElementByPath(e, 'DATA\Flags'), 0);
  SetEditValue(ElementByPath(e, 'DATA\Skill'), 'None');
end;


// Main function (in Finalize because it needs to run after "Process" to avoid UI errors).
function Finalize: integer;
var
  i: integer;
  e: IInterface;
  desc: string;
  spell: IInterface;
  CSLindex: integer;
  CSLfile: IInterface;
  VMAD: IInterface;
  BOOKS: IInterface;
begin
  // Find the patch file and its place in the load order
  CSLindex := IndexOfValidatedTIM();
  CSLfile := FileByIndex(CSLindex);

  // Find the script element that needs to be copied into each spell tome
  VMAD := ElementByPath(ElementByIndex(GroupBySignature(CSLfile, 'MISC'),0), 'VMAD');
  if not Assigned(VMAD) then
    raise Exception.Create('Can not locate the script holder script information!');

  // Remove existing books from patch then add spell tomes from all plugins lower in load order.
  AddTomesToPatch(CSLfile, CSLIndex);

  // Now update all of the added spell tomes
  BOOKS := GroupBySignature(CSLfile, 'BOOK');
  for i := ElementCount(BOOKS) - 1 downto 0 do begin
    e := ElementByIndex(BOOKS, i);
    AddMessage('----------------------------------------' + Name(e));

    // Get the spell the tome teaches and assign it to the script property
    spell := LinksTo(ElementByPath(e, 'DATA\Spell'));
    if not Assigned(spell) then begin AddMessage('No spell associated with tome ' + Name(e)); continue; end;  // Should not be possible!
    TransferSpellToLearningScript(e, spell, VMAD);

    // Copy the spell information into an additional page of the spell tome (preserving any existing text for spell mods that already had interesting text)
    SetEditValue(ElementByPath(e, 'DESC'), GetEditValue(ElementByPath(e, 'DESC')) + ' [pagebreak] <font face''$HandwrittenFont''><font size=''30''><p align=''center''>' + GetEditValue(ElementByPath(spell, 'FULL')));

    // Now use the spell description (possibly from its effects) to fill the tome description and add that to the tome text as well.
    desc := FindSpellDescription(spell);
    SetEditValue(ElementByPath(e, 'CNAM'), desc);
    SetEditValue(ElementByPath(e, 'DESC'), GetEditValue(ElementByPath(e, 'DESC')) + '<font size=''20''><p><p align=''left''>' + desc); 

    // Some books have all zeros for object bounds, so set those to the book default
    if (GetEditValue(ElementByPath(e, 'OBND\X1')) = '0') and (GetEditValue(ElementByPath(e, 'OBND\X2')) = '0') then
      ElementAssign(ElementByPath(e, 'OBND'), LowInteger, ElementByPath(ElementByIndex(GroupBySignature(CSLfile, 'MISC'),0), 'OBND'), False);
  end;

  // A little housekeeping
  SortMasters(CSLfile);
  CleanMasters(CSLfile);
  RemoveFilter;  // force interface to collapse records to avoid a UI error
end;

end.
