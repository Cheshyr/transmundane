{
	Extract School and Half-Cost Perk level from SPELs
}

unit ExtractSpellSchoolSkill;

var Spell_School_Skill_List : TStringList;
 
//============================================================================
function Initialize: integer;
begin
	Spell_School_Skill_List := TStringList.Create;
	//Spell_School_Skill_List.Add('SPIT\Half-cost Perk;Name');
end;

//============================================================================
function Process(e: IInterface): integer;
var
	spell: IInterface;
	refBy: IwbMainRecord;
	i: integer;
	validSig: integer;

begin
	validSig := 0;
	if Signature(e) <> 'SPEL' then exit;
	//AddMessage(' ' + IntToStr(ReferencedByCount(e)));

	if ReferencedByCount(e) > 0 then
		AddMessage(' ' + GetElementEditValues(e, 'FULL'));
		for i := 0 to ReferencedByCount(e) - 1 do begin
		
			refBy := ReferencedByIndex(e,i);
			AddMessage('Sig: ' + Signature(refBy));
				
			if Signature(refBy) = 'QUST' then 
				validSig := 1
			else if Signature(refBy) = 'LVLI' then 
				validSig := 1
			else if Signature(refBy) = 'FLST' then 
				validSig := 1
			else if Signature(refBy) = 'ACTI' then 
				validSig := 1
			else if Signature(refBy) = 'BOOK' then 
				validSig := 1
			else if Signature(refBy) = 'COBJ' then 
				validSig := 1
			else
				validSig := 0;
			
		end;
	
		AddMessage('validSig: ' + IntToStr(validSig));
		if validSig > 0 then

			if GetElementEditValues(e, 'SPIT\Half-cost Perk') = 'NULL - Null Reference [00000000]' then exit

			else if GetElementEditValues(e, 'SPIT\Half-cost Perk') = 'AlterationNovice00 "Novice Alteration" [PERK:000F2CA6]' then Spell_School_Skill_List.Add(IntToHex(FixedFormID(e), 8) + ';Alteration;0;' + GetElementEditValues(e, 'FULL'))
			else if GetElementEditValues(e, 'SPIT\Half-cost Perk') = 'AlterationApprentice25 "Apprentice Alteration" [PERK:000C44B7]' then Spell_School_Skill_List.Add(IntToHex(FixedFormID(e), 8) + ';Alteration;25;' + GetElementEditValues(e, 'FULL'))
			else if GetElementEditValues(e, 'SPIT\Half-cost Perk') = 'AlterationAdept50 "Adept Alteration" [PERK:000C44B8]' then Spell_School_Skill_List.Add(IntToHex(FixedFormID(e), 8) + ';Alteration;50;' + GetElementEditValues(e, 'FULL'))
			else if GetElementEditValues(e, 'SPIT\Half-cost Perk') = 'AlterationExpert75 "Expert Alteration" [PERK:000C44B9]' then Spell_School_Skill_List.Add(IntToHex(FixedFormID(e), 8) + ';Alteration;75;' + GetElementEditValues(e, 'FULL'))
			else if GetElementEditValues(e, 'SPIT\Half-cost Perk') = 'AlterationMaster100 "Master Alteration" [PERK:000C44BA]' then Spell_School_Skill_List.Add(IntToHex(FixedFormID(e), 8) + ';Alteration;100;' + GetElementEditValues(e, 'FULL'))

			else if GetElementEditValues(e, 'SPIT\Half-cost Perk') = 'ConjurationNovice00 "Novice Conjuration" [PERK:000F2CA7]' then Spell_School_Skill_List.Add(IntToHex(FixedFormID(e), 8) + ';Conjuration;0;' + GetElementEditValues(e, 'FULL'))
			else if GetElementEditValues(e, 'SPIT\Half-cost Perk') = 'ConjurationApprentice25 "Apprentice Conjuration" [PERK:000C44BB]' then Spell_School_Skill_List.Add(IntToHex(FixedFormID(e), 8) + ';Conjuration;25;' + GetElementEditValues(e, 'FULL'))
			else if GetElementEditValues(e, 'SPIT\Half-cost Perk') = 'ConjurationAdept50 "Adept Conjuration" [PERK:000C44BC]' then Spell_School_Skill_List.Add(IntToHex(FixedFormID(e), 8) + ';Conjuration;50;' + GetElementEditValues(e, 'FULL'))
			else if GetElementEditValues(e, 'SPIT\Half-cost Perk') = 'ConjurationExpert75 "Expert Conjuration" [PERK:000C44BD]' then Spell_School_Skill_List.Add(IntToHex(FixedFormID(e), 8) + ';Conjuration;75;' + GetElementEditValues(e, 'FULL'))
			else if GetElementEditValues(e, 'SPIT\Half-cost Perk') = 'ConjurationMaster100 "Master Conjuration" [PERK:000C44BE]' then Spell_School_Skill_List.Add(IntToHex(FixedFormID(e), 8) + ';Conjuration;100;' + GetElementEditValues(e, 'FULL'))

			else if GetElementEditValues(e, 'SPIT\Half-cost Perk') = 'DestructionNovice00 "Novice Destruction" [PERK:000F2CA8]' then Spell_School_Skill_List.Add(IntToHex(FixedFormID(e), 8) + ';Destruction;0;' + GetElementEditValues(e, 'FULL'))
			else if GetElementEditValues(e, 'SPIT\Half-cost Perk') = 'DestructionApprentice25 "Apprentice Destruction" [PERK:000C44BF]' then Spell_School_Skill_List.Add(IntToHex(FixedFormID(e), 8) + ';Destruction;25;' + GetElementEditValues(e, 'FULL'))
			else if GetElementEditValues(e, 'SPIT\Half-cost Perk') = 'DestructionAdept50 "Adept Destruction" [PERK:000C44C0]' then Spell_School_Skill_List.Add(IntToHex(FixedFormID(e), 8) + ';Destruction;50;' + GetElementEditValues(e, 'FULL'))
			else if GetElementEditValues(e, 'SPIT\Half-cost Perk') = 'DestructionExpert75 "Expert Destruction" [PERK:000C44C1]' then Spell_School_Skill_List.Add(IntToHex(FixedFormID(e), 8) + ';Destruction;75;' + GetElementEditValues(e, 'FULL'))
			else if GetElementEditValues(e, 'SPIT\Half-cost Perk') = 'DestructionMaster100 "Master Destruction" [PERK:000C44C2]' then Spell_School_Skill_List.Add(IntToHex(FixedFormID(e), 8) + ';Destruction;100;' + GetElementEditValues(e, 'FULL'))

			else if GetElementEditValues(e, 'SPIT\Half-cost Perk') = 'IllusionNovice00 "Novice Illusion" [PERK:000F2CA9]' then Spell_School_Skill_List.Add(IntToHex(FixedFormID(e), 8) + ';Illusion;0;' + GetElementEditValues(e, 'FULL'))
			else if GetElementEditValues(e, 'SPIT\Half-cost Perk') = 'IllusionApprentice25 "Apprentice Illusion" [PERK:000C44C3]' then Spell_School_Skill_List.Add(IntToHex(FixedFormID(e), 8) + ';Illusion;25;' + GetElementEditValues(e, 'FULL'))
			else if GetElementEditValues(e, 'SPIT\Half-cost Perk') = 'IllusionAdept50 "Adept Illusion" [PERK:000C44C4]' then Spell_School_Skill_List.Add(IntToHex(FixedFormID(e), 8) + ';Illusion;50;' + GetElementEditValues(e, 'FULL'))
			else if GetElementEditValues(e, 'SPIT\Half-cost Perk') = 'IllusionExpert75 "Expert Illusion" [PERK:000C44C5]' then Spell_School_Skill_List.Add(IntToHex(FixedFormID(e), 8) + ';Illusion;75;' + GetElementEditValues(e, 'FULL'))
			else if GetElementEditValues(e, 'SPIT\Half-cost Perk') = 'IllusionMaster100 "Master Illusion" [PERK:000C44C6]' then Spell_School_Skill_List.Add(IntToHex(FixedFormID(e), 8) + ';Illusion;100;' + GetElementEditValues(e, 'FULL'))

			else if GetElementEditValues(e, 'SPIT\Half-cost Perk') = 'RestorationNovice00 "Novice Restoration" [PERK:000F2CAA]' then Spell_School_Skill_List.Add(IntToHex(FixedFormID(e), 8) + ';Restoration;0;' + GetElementEditValues(e, 'FULL'))
			else if GetElementEditValues(e, 'SPIT\Half-cost Perk') = 'RestorationApprentice25 "Apprentice Restoration" [PERK:000C44C7]' then Spell_School_Skill_List.Add(IntToHex(FixedFormID(e), 8) + ';Restoration;25;' + GetElementEditValues(e, 'FULL'))
			else if GetElementEditValues(e, 'SPIT\Half-cost Perk') = 'RestorationAdept50 "Adept Restoration" [PERK:000C44C8]' then Spell_School_Skill_List.Add(IntToHex(FixedFormID(e), 8) + ';Restoration;50;' + GetElementEditValues(e, 'FULL'))
			else if GetElementEditValues(e, 'SPIT\Half-cost Perk') = 'RestorationExpert75 "Expert Restoration" [PERK:000C44C9]' then Spell_School_Skill_List.Add(IntToHex(FixedFormID(e), 8) + ';Restoration;75;' + GetElementEditValues(e, 'FULL'))
			else if GetElementEditValues(e, 'SPIT\Half-cost Perk') = 'RestorationMaster100 "Master Restoration" [PERK:000C44CA]' then Spell_School_Skill_List.Add(IntToHex(FixedFormID(e), 8) + ';Restoration;100;' + GetElementEditValues(e, 'FULL'));
	
	//Spell_School_Skill_List.Add(IntToHex(FixedFormID(e), 8) + ';' + GetElementEditValues(e, 'SPIT\Half-cost Perk') + ';' + Name(e));
	//Spell_School_Skill_List.Add(GetElementEditValues(e, 'SPIT\Half-cost Perk') + ';' + Name(e));
end;

// Called after the script has finished processing every record
function Finalize : integer;
var filename : string;
begin
	filename := ProgramPath + 'Edit Scripts\Spell_School_Skill_List.txt';
	AddMessage('Saving list to ' + filename);
	Spell_School_Skill_List.SaveToFile(filename);
	Spell_School_Skill_List.Free;
end;

end.

