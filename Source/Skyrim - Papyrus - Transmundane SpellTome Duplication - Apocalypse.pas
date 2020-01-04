{
  Treat the challenging_spell_learning.esp as a dynamic patch file which can be updated based on all loaded mods.

  Just run this script and magic happens.

  Tomes updated will be listed in the Messages tab with ---------------------------------------- prefixed to make spotting errors easier.
}
unit Transmundane_Apocalypse_Spelltomes;

// Find the file in the loaded plugins list and return its index
function IndexOfFile(fileName: string): integer;
var
	fileIndex: integer;
begin
	for fileIndex := FileCount - 1 downto 0 do
		if GetFileName(FileByIndex(fileIndex)) = fileName then break;
	if fileIndex = 0 then
		raise Exception.Create(fileName + ' must be loaded!');
	Result := fileIndex;
end;


// Insert all spell tomes found in specified
procedure DuplicateSpellTomes(fileSource, fileTarget: IInterface);
var
	i: integer;
	g: IInterface;
	e: IInterface;
begin
    g := GroupBySignature(fileSource, 'BOOK');
    if not Assigned(g) then continue;
    for i := ElementCount(g) - 1 downto 0 do begin
	e := ElementByIndex(g, i);
		if Assigned(ElementByPath(e, 'DATA\Spell')) then begin
			AddRequiredElementMasters(e, fileTarget, False);
			wbCopyElementToFile(e, fileTarget, True, True);
		end;
    end;
end;

// Copy the script into the spell tome then move the spell to the SpellToLearn property and clear the Teaches Spell flag on the tome.
procedure TransferSpellToScript(e, VMAD: IInterface; spell: integer);
var 
	i: integer;
	learningScript: IInterface;
	prop: IInterface;
begin
	// Copy just the spell learning script or the entire VMAD record
	if ElementExists(e, 'VMAD') then begin 
		AddMessage('Pre-existing script on spell tome ' + Name(e) + ' attempting to copy learning script.'); 
		learningScript := FindScript(ElementByPath(e, 'VMAD'));
		if not Assigned(learningScript) then
			ElementAssign(FindScriptList(ElementByPath(e, 'VMAD')), HighInteger, FindScript(VMAD), False);
	end
	else begin
		Add(e, 'VMAD', true);
		ElementAssign(ElementByPath(e, 'VMAD'), LowInteger, VMAD, False);  // copy entire VMAD record
	end

	// Find and fill the SpellToLearn property with the actual spell entry
	learningScript := FindScript(ElementByPath(e, 'VMAD'));
	if not Assigned(learningScript) then begin AddMessage('Missing _TIM_Script_Tome for ' + Name(e)); Exit; end;
	prop := FindProperty(learningScript);
	if not Assigned(prop) then begin AddMessage('Missing critical SpellToLearn property for ' + Name(e)); Exit; end;
	SetEditValue(prop, spell);

	// Clear the Teaches Spell flag and Spell/Skill fields for the new scripted spell tome
	SetNativeValue(ElementByPath(e, 'DATA\Flags'), 0);
	SetEditValue(ElementByPath(e, 'DATA\Skill'), 'None');
end;

// Find the list of scripts in a VMAD record.
function FindScriptList(VMAD: IInterface): IInterface;
begin
	if Assigned(ElementByPath(VMAD, 'Scripts')) then // different paths for different versions of xEdit!
		Result := ElementByPath(VMAD, 'Scripts')
	else
		Result := ElementByPath(VMAD, 'Data\Scripts');
end;

// Find the script in the VMAD record.
function FindScript(VMAD: IInterface): IInterface;
var
	i: integer;
	scripts: IInterface;
begin
	scripts := FindScriptList(VMAD);
	for i := ElementCount(scripts) - 1 downto 0 do
		if GetEditValue(ElementByPath(ElementByIndex(scripts,i), 'scriptName')) = '_TIM_Script_Tome' then
			Result := ElementByIndex(scripts, i);
end;

// Find the property in the script.
function FindProperty(script: IInterface): IInterface;
var 
	i: integer;
begin
	script := ElementByPath(script, 'Properties');
	for i := ElementCount(script) - 1 downto 0 do
		if GetEditValue(ElementByPath(ElementByIndex(script,i), 'propertyName')) = 'SpellToLearn' then
			//AddMessage('Returning: ' + ElementByPath(ElementByIndex(script,i), 'Int32'));
			Result := ElementByPath(ElementByIndex(script,i), 'Int32');
end;


procedure PrefixEditorID(e: IInterface);
var
	oldEditorID: string;
	newEditorID: string;
begin
	oldEditorID := EditorID(e);
	newEditorID := '_TIM_' + EditorID(e);
	
	SetEditValue(ElementByPath(e, 'EDID'), newEditorID);
end;



// Main function (in Finalize because it needs to run after "Process" to avoid UI errors).
function Finalize: integer;
var
	i, j: integer;
	e: IInterface;
	//desc: string;
	spell: IInterface;
	VMAD: IInterface;
	BOOKS: IInterface;

	ApocalypseIndex: integer;
	TransmundaneIndex: integer;

	ApocalypseFile: IInterface;
	TransmundaneFile: IInterface;
	
	kwda, k: IInterface;
    exists: boolean;
begin
	// Find the patch file and its place in the load order

	ApocalypseIndex := IndexOfFile('Apocalypse - Magic of Skyrim.esp');
	//AddMessage('ApocalypseIndex:' + IntToStr(ApocalypseIndex));
	TransmundaneIndex := IndexOfFile('Transmundane.esp');
	//AddMessage('TransmundaneIndex:' + IntToStr(TransmundaneIndex));

	ApocalypseFile := FileByIndex(ApocalypseIndex);
	AddMessage('ApocalypseFile:' + Name(ApocalypseFile));
	TransmundaneFile := FileByIndex(TransmundaneIndex);
	AddMessage('TransmundaneFile:' + Name(TransmundaneFile));


	// Find the script element that needs to be copied into each spell tome
	// Transmundane has a MISC object which contains an empty _TIM_Script_Tome script
	VMAD := ElementByPath(ElementByIndex(GroupBySignature(TransmundaneFile, 'MISC'),0), 'VMAD');
	if not Assigned(VMAD) then
		raise Exception.Create('Can not locate the script holder script information!');

	// add spell tomes from source plugin to target plugin.
	DuplicateSpellTomes(ApocalypseFile, TransmundaneFile);


	// Now update all of the added spell tomes
    BOOKS := GroupBySignature(TransmundaneFile, 'BOOK');
	
	for i := ElementCount(BOOKS) - 1 downto 0 do begin
		e := ElementByIndex(BOOKS, i);
		AddMessage('--- ' + EditorID(e));

		// Get the spell the tome teaches and assign it to the script property
		spell := LinksTo(ElementByPath(e, 'DATA\Spell'));
		//AddMessage('*'(StrToInt64(FixedFormID(spell))));
		//AddMessage(':'+IntToStr(StrToIntDef('$' + FixedFormID(spell),0)));
		//AddMessage(':'+IntToStr(StrToIntDef('$' + '10',0)));
		//AddMessage('FormID:'+ IntToStr(FormID(spell)));
		//AddMessage('FixedFormID:'+ IntToStr(FixedFormID(spell)));
		//AddMessage('GetLoadOrderFormID:'+ IntToStr(GetLoadOrderFormID(spell)));
		//AddMessage('GetLoadOrderFormID(spell) - (ApocalypseFile * 0x01000000):'+ IntToStr(GetLoadOrderFormID(spell) - (ApocalypseFile * $01000000)));
		//AddMessage('ApocalypseIndex:' + IntToStr(GetLoadOrderFormID(spell) -((ApocalypseIndex - 1) * $01000000)));
		
		// Some books have all zeros for object bounds, so set those to the book default
		if (GetEditValue(ElementByPath(e, 'OBND\X1')) = '0') and (GetEditValue(ElementByPath(e, 'OBND\X2')) = '0') then
			ElementAssign(ElementByPath(e, 'OBND'), LowInteger, ElementByPath(ElementByIndex(GroupBySignature(TransmundaneFile, 'MISC'),0), 'OBND'), False);
		
		if not Assigned(spell) then begin AddMessage('No spell associated with tome ' + Name(e)); continue; end;  // Should not be possible!
		//TransferSpellToScript(e, spell, VMAD);
		TransferSpellToScript(e, VMAD, IntToStr(GetLoadOrderFormID(spell) -((ApocalypseIndex - 1) * $01000000)));
		
		PrefixEditorID(e);
		
		// get existing keywords list or add a new
		kwda := ElementBySignature(e, 'KWDA');
		if not Assigned(kwda) then
			kwda := Add(e, 'KWDA', True);
		
		  // no keywords subrecord (it must exist) - terminate script
		if not Assigned(kwda) then begin
			AddMessage('No keywords subrecord in ' + Name(e));
			Result := 1;
			Exit;
		end;
		
		exists := false;
		for j := 0 to ElementCount(kwda) - 1 do
			if IntToHex(GetNativeValue(ElementByIndex(kwda, j)), 8) = '0600AA01' then begin
				exists := true;
				Break;
		  end;
		  
		if exists then Continue;
		
		// CK likes to save empty KWDA with only a single NULL form, use it if so
		if (ElementCount(kwda) = 1) and (GetNativeValue(ElementByIndex(kwda, 0)) = 0) then
			SetEditValue(ElementByIndex(kwda, 0), '0600AA01')
		else begin
			// add a new keyword at the end of list
			// container, index, element, aOnlySK
			k := ElementAssign(kwda, HighInteger, nil, False);
			if not Assigned(k) then begin
				AddMessage('Can''t add keyword to ' + Name(e));
				Exit;
			end;
			SetEditValue(k, '0600AA01');
		end;
		
		  // update KSIZ keywords count
		if not ElementExists(e, 'KSIZ') then
			Add(e, 'KSIZ', True);
		SetElementNativeValues(e, 'KSIZ', ElementCount(kwda));

		AddMessage('Processed: ' + Name(e));
		
		
		// Copy the spell information into an additional page of the spell tome (preserving any existing text for spell mods that already had interesting text)
		//SetEditValue(ElementByPath(e, 'DESC'), GetEditValue(ElementByPath(e, 'DESC')) + ' [pagebreak] <font face''$HandwrittenFont''><font size=''30''><p align=''center''>' + GetEditValue(ElementByPath(spell, 'FULL')));

		// Now use the spell description (possibly from its effects) to fill the tome description and add that to the tome text as well.
		//desc := FindSpellDescription(spell);
		//SetEditValue(ElementByPath(e, 'CNAM'), desc);
		//SetEditValue(ElementByPath(e, 'DESC'), GetEditValue(ElementByPath(e, 'DESC')) + '<font size=''20''><p><p align=''left''>' + desc); 

//_TIM_Keyword_CustomTome [KYWD:0600AA01]
	end;

	// A little housekeeping
	//SortMasters(TransmundaneFile);
	//CleanMasters(TransmundaneFile);
	RemoveFilter;  // force interface to collapse records to avoid a UI error

end;

end.
