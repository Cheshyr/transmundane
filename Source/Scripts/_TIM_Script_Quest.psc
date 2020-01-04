Scriptname _TIM_Script_Quest extends Quest  

;General Globals
GlobalVariable Property _TIM_Global_XPRate_Spells Auto
{default: 3.0, range from 1-5, smaller is slower}

;GlobalVariable Property _TIM_XP_Rate_School_Alteration Auto
;GlobalVariable Property _TIM_XP_Rate_School_Conjuration Auto
;GlobalVariable Property _TIM_XP_Rate_School_Destruction Auto
;GlobalVariable Property _TIM_XP_Rate_School_Illusion Auto
;GlobalVariable Property _TIM_XP_Rate_School_Restoration Auto

;GlobalVariable Property _TIM_XP_Rate_Archtype_Absorb Auto
;...etc

MiscObject Property _TIM_XP_Currency_Fire Auto
MiscObject Property _TIM_XP_Currency_Sun Auto


Actor Property _TIM_PlayerRef Auto
Float Property _TIM_Version Auto

int[] Property _TIM_SchoolTable_EarnedXP Auto
int[] Property _TIM_ArchtypeTable_EarnedXP Auto

string[] _TIM_SchoolTable_Names 
string[] _TIM_ArchtypeTable_Names


;Mod Status Variables
int _TIM_Loaded_Apocalypse
int _TIM_Loaded_Arcanum
int _TIM_Loaded_Debug
int _TIM_Loaded_ForgottenMagic
int _TIM_Loaded_Mysticism
int _TIM_Loaded_Phenderix

int _TIM_ModIndex_Apocalypse
int _TIM_ModIndex_Arcanum
int _TIM_ModIndex_Debug
int _TIM_ModIndex_ForgottenMagic
int _TIM_ModIndex_Mysticism
int _TIM_ModIndex_Phenderix
int _TIM_ModIndex_Transmundane

int _TIM_XPRate_Spells

;Spell Tables******************************************************************
int[] Property _TIM_SpellTable_Apocalypse1_SpellFormID Auto
int[] Property _TIM_SpellTable_Apocalypse1_SpellTomeID Auto
int[] Property _TIM_SpellTable_Apocalypse1_SchoolIndex Auto
int[] Property _TIM_SpellTable_Apocalypse1_Archtype1Index Auto
int[] Property _TIM_SpellTable_Apocalypse1_Archtype2Index Auto
int[] Property _TIM_SpellTable_Apocalypse1_Archtype3Index Auto

int[] Property _TIM_SpellTable_Apocalypse2_SpellFormID Auto
int[] Property _TIM_SpellTable_Apocalypse2_SpellTomeID Auto
int[] Property _TIM_SpellTable_Apocalypse2_SchoolIndex Auto
int[] Property _TIM_SpellTable_Apocalypse2_Archtype1Index Auto
int[] Property _TIM_SpellTable_Apocalypse2_Archtype2Index Auto
int[] Property _TIM_SpellTable_Apocalypse2_Archtype3Index Auto

int[] Property _TIM_SpellTable_Arcanum_SpellFormID Auto
int[] Property _TIM_SpellTable_Arcanum_SpellTomeID Auto
int[] Property _TIM_SpellTable_Arcanum_SchoolIndex Auto
int[] Property _TIM_SpellTable_Arcanum_Archtype1Index Auto
int[] Property _TIM_SpellTable_Arcanum_Archtype2Index Auto
int[] Property _TIM_SpellTable_Arcanum_Archtype3Index Auto

int[] Property _TIM_SpellTable_ForgottenMagic_SpellFormID Auto
int[] Property _TIM_SpellTable_ForgottenMagic_SpellTomeID Auto
int[] Property _TIM_SpellTable_ForgottenMagic_SchoolIndex Auto
int[] Property _TIM_SpellTable_ForgottenMagic_Archtype1Index Auto
int[] Property _TIM_SpellTable_ForgottenMagic_Archtype2Index Auto
int[] Property _TIM_SpellTable_ForgottenMagic_Archtype3Index Auto

int[] Property _TIM_SpellTable_Mysticism_SpellFormID Auto
int[] Property _TIM_SpellTable_Mysticism_SpellTomeID Auto
int[] Property _TIM_SpellTable_Mysticism_SchoolIndex Auto
int[] Property _TIM_SpellTable_Mysticism_Archtype1Index Auto
int[] Property _TIM_SpellTable_Mysticism_Archtype2Index Auto
int[] Property _TIM_SpellTable_Mysticism_Archtype3Index Auto

int[] Property _TIM_SpellTable_Phenderix_SpellFormID Auto
int[] Property _TIM_SpellTable_Phenderix_SpellTomeID Auto
int[] Property _TIM_SpellTable_Phenderix_SchoolIndex Auto
int[] Property _TIM_SpellTable_Phenderix_Archtype1Index Auto
int[] Property _TIM_SpellTable_Phenderix_Archtype2Index Auto
int[] Property _TIM_SpellTable_Phenderix_Archtype3Index Auto

int[] Property _TIM_SpellTable_Vanilla_SpellFormID Auto
int[] Property _TIM_SpellTable_Vanilla_SpellTomeID Auto
int[] Property _TIM_SpellTable_Vanilla_SchoolIndex Auto
int[] Property _TIM_SpellTable_Vanilla_Archtype1Index Auto
int[] Property _TIM_SpellTable_Vanilla_Archtype2Index Auto
int[] Property _TIM_SpellTable_Vanilla_Archtype3Index Auto
int[] Property _TIM_SpellTable_Vanilla_SpellTIMTomeID Auto


;Archtype Tables***************************************************************
int[] Property _TIM_ArchtypeTable_Vanilla_Absorb_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Apparatus_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Armor_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Ash_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Cloak_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Damage_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Death_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Disease_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Earth_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Enhance_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Fabricate_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Fire_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Force_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Frost_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Impair_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Life_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Mental_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Metamagic_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Oblivion_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Poison_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Projectile_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Recover_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Rune_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Sense_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Shadow_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Shock_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Soul_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Space_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Sun_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Time_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Translocate_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Transmute_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Wall_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Ward_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Water_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Wind_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Spare1_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Spare2_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Spare3_SpellFormID Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Spare4_SpellFormID Auto

int[] Property _TIM_ArchtypeTable_Vanilla_Absorb_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Apparatus_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Armor_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Ash_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Cloak_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Damage_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Death_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Disease_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Earth_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Enhance_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Fabricate_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Fire_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Force_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Frost_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Impair_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Life_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Mental_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Metamagic_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Oblivion_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Poison_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Projectile_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Recover_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Rune_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Sense_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Shadow_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Shock_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Soul_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Space_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Sun_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Time_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Translocate_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Transmute_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Wall_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Ward_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Water_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Wind_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Spare1_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Spare2_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Spare3_SpellToLearnXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Spare4_SpellToLearnXP Auto

int[] Property _TIM_ArchtypeTable_Vanilla_Absorb_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Apparatus_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Armor_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Ash_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Cloak_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Damage_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Death_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Disease_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Earth_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Enhance_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Fabricate_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Fire_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Force_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Frost_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Impair_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Life_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Mental_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Metamagic_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Oblivion_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Poison_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Projectile_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Recover_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Rune_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Sense_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Shadow_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Shock_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Soul_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Space_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Sun_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Time_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Translocate_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Transmute_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Wall_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Ward_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Water_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Wind_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Spare1_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Spare2_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Spare3_SpellEarnedXP Auto
int[] Property _TIM_ArchtypeTable_Vanilla_Spare4_SpellEarnedXP Auto


;Init and Utility Functions****************************************************

Event OnInit()
    ;Debug.Notification("_TIM: Script_Quest.OnInit()")
    Maintenance()
endEvent

Function Maintenance()
    ;Debug.Notification("_TIM: Script_Quest.Maintenance()" )

	If _TIM_Version < 0.31 ; Current version
		If _TIM_Version
            Debug.Notification("_TIM: Updating from version " + _TIM_Version)
            _TIM_SchoolTable_Names[0] = "Alteration"
            _TIM_SchoolTable_Names[1] = "Conjuration"
            _TIM_SchoolTable_Names[2] = "Destruction"
            _TIM_SchoolTable_Names[3] = "Illusion"
            _TIM_SchoolTable_Names[4] = "Restoration"

            _TIM_ArchtypeTable_Names[0] = "Absorb"
            _TIM_ArchtypeTable_Names[1] = "Apparatus"
            _TIM_ArchtypeTable_Names[2] = "Armor"
            _TIM_ArchtypeTable_Names[3] = "Ash"
            _TIM_ArchtypeTable_Names[4] = "Cloak"
            _TIM_ArchtypeTable_Names[5] = "Damage"
            _TIM_ArchtypeTable_Names[6] = "Death"
            _TIM_ArchtypeTable_Names[7] = "Disease"
            _TIM_ArchtypeTable_Names[8] = "Earth"
            _TIM_ArchtypeTable_Names[9] = "Enhance"
            _TIM_ArchtypeTable_Names[10] = "Fabricate"
            _TIM_ArchtypeTable_Names[11] = "Fire"
            _TIM_ArchtypeTable_Names[12] = "Force"
            _TIM_ArchtypeTable_Names[13] = "Frost"
            _TIM_ArchtypeTable_Names[14] = "Impair"
            _TIM_ArchtypeTable_Names[15] = "Life"
            _TIM_ArchtypeTable_Names[16] = "Mental"
            _TIM_ArchtypeTable_Names[17] = "Metamagic"
            _TIM_ArchtypeTable_Names[18] = "Oblivion"
            _TIM_ArchtypeTable_Names[19] = "Poison"
            _TIM_ArchtypeTable_Names[20] = "Projectile"
            _TIM_ArchtypeTable_Names[21] = "Recover"
            _TIM_ArchtypeTable_Names[22] = "Rune"
            _TIM_ArchtypeTable_Names[23] = "Sense"
            _TIM_ArchtypeTable_Names[24] = "Shadow"
            _TIM_ArchtypeTable_Names[25] = "Shock"
            _TIM_ArchtypeTable_Names[26] = "Soul"
            _TIM_ArchtypeTable_Names[27] = "Space"
            _TIM_ArchtypeTable_Names[28] = "Sun"
            _TIM_ArchtypeTable_Names[29] = "Time"
            _TIM_ArchtypeTable_Names[30] = "Translocate"
            _TIM_ArchtypeTable_Names[31] = "Transmute"
            _TIM_ArchtypeTable_Names[32] = "Wall"
            _TIM_ArchtypeTable_Names[33] = "Ward"
            _TIM_ArchtypeTable_Names[34] = "Water"
            _TIM_ArchtypeTable_Names[35] = "Wind"
            _TIM_ArchtypeTable_Names[36] = "Spare1"
            _TIM_ArchtypeTable_Names[37] = "Spare2"
            _TIM_ArchtypeTable_Names[38] = "Spare3"
            _TIM_ArchtypeTable_Names[39] = "Spare4"

		Else
            ;Debug.Notification("_TIM: Initializing for the first time.")

            _TIM_SchoolTable_Names = new string[5]
            _TIM_SchoolTable_Names[0] = "Alteration"
            _TIM_SchoolTable_Names[1] = "Conjuration"
            _TIM_SchoolTable_Names[2] = "Destruction"
            _TIM_SchoolTable_Names[3] = "Illusion"
            _TIM_SchoolTable_Names[4] = "Restoration"


            _TIM_ArchtypeTable_Names  = new string[39]
            _TIM_ArchtypeTable_Names[0] = "Absorb"
            _TIM_ArchtypeTable_Names[1] = "Apparatus"
            _TIM_ArchtypeTable_Names[2] = "Armor"
            _TIM_ArchtypeTable_Names[3] = "Ash"
            _TIM_ArchtypeTable_Names[4] = "Cloak"
            _TIM_ArchtypeTable_Names[5] = "Damage"
            _TIM_ArchtypeTable_Names[6] = "Death"
            _TIM_ArchtypeTable_Names[7] = "Disease"
            _TIM_ArchtypeTable_Names[8] = "Earth"
            _TIM_ArchtypeTable_Names[9] = "Enhance"
            _TIM_ArchtypeTable_Names[10] = "Fabricate"
            _TIM_ArchtypeTable_Names[11] = "Fire"
            _TIM_ArchtypeTable_Names[12] = "Force"
            _TIM_ArchtypeTable_Names[13] = "Frost"
            _TIM_ArchtypeTable_Names[14] = "Impair"
            _TIM_ArchtypeTable_Names[15] = "Life"
            _TIM_ArchtypeTable_Names[16] = "Mental"
            _TIM_ArchtypeTable_Names[17] = "Metamagic"
            _TIM_ArchtypeTable_Names[18] = "Oblivion"
            _TIM_ArchtypeTable_Names[19] = "Poison"
            _TIM_ArchtypeTable_Names[20] = "Projectile"
            _TIM_ArchtypeTable_Names[21] = "Recover"
            _TIM_ArchtypeTable_Names[22] = "Rune"
            _TIM_ArchtypeTable_Names[23] = "Sense"
            _TIM_ArchtypeTable_Names[24] = "Shadow"
            _TIM_ArchtypeTable_Names[25] = "Shock"
            _TIM_ArchtypeTable_Names[26] = "Soul"
            _TIM_ArchtypeTable_Names[27] = "Space"
            _TIM_ArchtypeTable_Names[28] = "Sun"
            _TIM_ArchtypeTable_Names[29] = "Time"
            _TIM_ArchtypeTable_Names[30] = "Translocate"
            _TIM_ArchtypeTable_Names[31] = "Transmute"
            _TIM_ArchtypeTable_Names[32] = "Wall"
            _TIM_ArchtypeTable_Names[33] = "Ward"
            _TIM_ArchtypeTable_Names[34] = "Water"
            _TIM_ArchtypeTable_Names[35] = "Wind"
            _TIM_ArchtypeTable_Names[36] = "Spare1"
            _TIM_ArchtypeTable_Names[37] = "Spare2"
            _TIM_ArchtypeTable_Names[38] = "Spare3"
            _TIM_ArchtypeTable_Names[39] = "Spare4"
            

		EndIf
		_TIM_Version = 0.31
    EndIf

    ; find Transmundane_Debug -  _TIM_DebugKey "Transmundane Debug Key" [MISC:FE000800]
    Bool DebugLoaded = Game.GetFormFromFile(0x00000800, "Transmundane_Debug.esp")
    if ( DebugLoaded )
        _TIM_Loaded_Debug = 1
        ;Debug.Notification("_TIM: DebugLoaded")
    else
        _TIM_Loaded_Debug = 0
    endif

    ; find Apocalypse - WB_AlterationMetamagic_MiscItem_Spellstone "Spellstone" [MISC:XX00BBB7]
    Form ApocalypseLoaded = Game.GetFormFromFile(0x0000BBB7, "Apocalypse - Magic of Skyrim.esp")
    if ( ApocalypseLoaded )
        _TIM_Loaded_Apocalypse = 1
        _TIM_ModIndex_Apocalypse = getHighByteAsLowByte(ApocalypseLoaded.GetFormID())
        Debug.Notification("_TIM: ApocalypseLoaded: " + _TIM_ModIndex_Apocalypse)
    else
        _TIM_Loaded_Apocalypse = 0
        _TIM_ModIndex_Apocalypse = -1
    endif

    ; find Arcanum - 00SPPortalGemOpalKey1 "Worn Opal Paragon" [MISC:XX4ED702]
    Form ArcanumLoaded = Game.GetFormFromFile(0x004ED702, "Arcanum.esp")
    if ( ArcanumLoaded )
        _TIM_Loaded_Arcanum = 1
        _TIM_ModIndex_Arcanum = getHighByteAsLowByte(ArcanumLoaded.GetFormID())
        Debug.Notification("_TIM: ArcanumLoaded: " + _TIM_ModIndex_Arcanum)
    else
        _TIM_Loaded_Arcanum = 0
        _TIM_ModIndex_Arcanum = -1
    endif

    ; find Forgotten Magic - sgStormShard "Storm Shard" [SLGM:000258A3]
    Form ForgottenMagicLoaded = Game.GetFormFromFile(0x000258A3, "ForgottenMagic_Redone.esp")
    if ( ForgottenMagicLoaded )
        _TIM_Loaded_ForgottenMagic = 1
        _TIM_ModIndex_ForgottenMagic = getHighByteAsLowByte(ForgottenMagicLoaded.GetFormID())
        Debug.Notification("_TIM: ForgottenMagicLoaded: " + _TIM_ModIndex_ForgottenMagic)
    else
        _TIM_Loaded_ForgottenMagic = 0
        _TIM_ModIndex_ForgottenMagic = -1
    endif

    ; find Mysticism - OreSimonium "Simonium Ore" [MISC:XX4B067B]
    Form MysticismLoaded = Game.GetFormFromFile(0x004B067B, "MysticismMagic.esp")
    if ( MysticismLoaded )
        _TIM_Loaded_Mysticism = 1
        _TIM_ModIndex_Mysticism = getHighByteAsLowByte(MysticismLoaded.GetFormID())
        Debug.Notification("_TIM: MysticismLoaded: " + _TIM_ModIndex_Mysticism)
    else
        _TIM_Loaded_Mysticism = 0
        _TIM_ModIndex_Mysticism = -1
    endif

    ; find Phenderix - ZZMagnetismGold "Gold" [MISC:XXDFE5EF]
    Form PhenderixLoaded = Game.GetFormFromFile(0x00DFE5EF, "Phenderix Magic Evolved.esp")
    if ( PhenderixLoaded )
        _TIM_Loaded_Phenderix = 1
        _TIM_ModIndex_Phenderix = getHighByteAsLowByte(PhenderixLoaded.GetFormID())
        Debug.Notification("_TIM: PhenderixLoaded: " + _TIM_ModIndex_Phenderix)
    else
        _TIM_Loaded_Phenderix = 0
        _TIM_ModIndex_Phenderix = -1
    endif

    ; find Transmundane - _TIM_Quest "Transmundane Data Manager" [QUST:XX00AA00]
    Form TransmundaneLoaded = Game.GetFormFromFile(0x0000AA00, "Transmundane.esp")
    _TIM_ModIndex_Transmundane = getHighByteAsLowByte(TransmundaneLoaded.GetFormID())
    Debug.Notification("_TIM: TransmundaneLoaded: " + _TIM_ModIndex_Transmundane)

    _TIM_XPRate_Spells = _TIM_Global_XPRate_Spells.GetValue() as Int
    RegisterForSingleUpdate(10.0)
endFunction

Event OnUpdate()
    _TIM_XPRate_Spells = _TIM_Global_XPRate_Spells.GetValue() as Int
    RegisterForSingleUpdate(10.0)
EndEvent


int Function getHighByteAsLowByte(int i)
    {Return the high byte of i as a value between 0 and 255 (0x00-0xFF), inclusive.
     Equivalent to "i >> 24 & 0xFF" in C, Java, etc.}
    ; https://www.creationkit.com/fallout4/index.php?title=Operator_Reference
    
    if i < 0
        ; Force i to be a positive number, by changing its high bit (bit 32) from 1 to 0.
        ; Then divide by 0x01000000 (16,777,216), which is now equivalent to a right shift of 24 bits.
        ; Finally, restore the value of the high bit we cleared, now that it is bit 8 and cannot affect the sign.
        return (i + 0x80000000) / 0x01000000 + 0x80
    endIf
    return i / 0x01000000
EndFunction


;Core Mechanics****************************************************

Function PlayerCastSpell(int SpellID)
    ;Debug.Notification("_TIM: PlayerCastSpell() " + SpellID)

    ;float ftimeStart = Utility.GetCurrentRealTime()

    int ModIndex        = getHighByteAsLowByte(SpellID)
    int SpellTomeIndex  = -1
    int SchoolIndex     = -1
    int Archtype1Index  = -1
    int Archtype2Index  = -1
    int Archtype3Index  = -1

    ; find the spell in one of the mods
    int[] lookupResults = findSpellDetailsbySpellID(SpellID, ModIndex)

    SpellTomeIndex  = lookupResults[0]
    SchoolIndex     = lookupResults[1]
    Archtype1Index  = lookupResults[2]
    Archtype2Index  = lookupResults[3]
    Archtype3Index  = lookupResults[4]


    ; add xp to spell school summary
    _TIM_SchoolTable_EarnedXP[SchoolIndex] = _TIM_SchoolTable_EarnedXP[SchoolIndex] + 1

    ; add xp to spell archtype summary
    _TIM_ArchtypeTable_EarnedXP[Archtype1Index] = _TIM_ArchtypeTable_EarnedXP[Archtype1Index] + 1
    _TIM_ArchtypeTable_EarnedXP[Archtype2Index] = _TIM_ArchtypeTable_EarnedXP[Archtype2Index] + 1
    _TIM_ArchtypeTable_EarnedXP[Archtype3Index] = _TIM_ArchtypeTable_EarnedXP[SchoolIndex] + 1

    float ftimeStart = Utility.GetCurrentRealTime()
    if((Archtype1Index == 11) || (Archtype2Index == 11) || (Archtype3Index == 11))
        _TIM_PlayerRef.AddItem(_TIM_XP_Currency_Fire, 5, true)     
    endif

    if((Archtype1Index == 28) || (Archtype2Index == 28) || (Archtype3Index == 28))
        _TIM_PlayerRef.AddItem(_TIM_XP_Currency_Sun, 5, true)
    endif
    float ftimeEnd2 = Utility.GetCurrentRealTime() 
    Debug.Notification("_TIM: " + (ftimeEnd2 - ftimeStart) + "ms total")
    ; add xp to spells
    addArchtypeXP(1, Archtype1Index, Archtype2Index, Archtype3Index)
 
    ;float ftimeEnd2 = Utility.GetCurrentRealTime()     
    ;Debug.Notification("_TIM: " + modCount + " mods in " + (ftimeEnd2 - ftimeEnd))
    ;Debug.Notification("_TIM: " + (ftimeEnd2 - ftimeStart) + "ms total")

endFunction

Function PlayerReadSpellTome(int SpellID, int XP)
    Debug.Notification("_TIM: PlayerReadSpellTome() " + SpellID + "," + XP)

    int ModIndex        = getHighByteAsLowByte(SpellID)
    int SpellTomeIndex  = -1
    int SchoolIndex     = -1
    int Archtype1Index  = -1
    int Archtype2Index  = -1
    int Archtype3Index  = -1

    ; find the spell in one of the mods
    int[] lookupResults = findSpellDetailsbySpellID(SpellID, ModIndex)

    SpellTomeIndex  = lookupResults[0]
    SchoolIndex     = lookupResults[1]
    Archtype1Index  = lookupResults[2]
    Archtype2Index  = lookupResults[3]
    Archtype3Index  = lookupResults[4]

    addArchtypeXP(XP, Archtype1Index, Archtype2Index, Archtype3Index)

endFunction

Book Function findTIMTomeFromTomeFormID(int TomeFormID)
    Debug.Notification("_TIM: findTIMTomeFromTomeID() " + TomeFormID)

    int localModIndex   = getHighByteAsLowByte(TomeFormID)
    int localTomeIndex = -1

    ; Vanilla?
    if((localModIndex == 0) || (localModIndex == 2) || (localModIndex == 4))
        localTomeIndex = _TIM_SpellTable_Vanilla_SpellTomeID.Find(TomeFormID)
        if(localTomeIndex >= 0)
            Debug.Notification("_TIM: found " + TomeFormID)
            Debug.Notification("_TIM: returning " + _TIM_SpellTable_Vanilla_SpellTIMTomeID[localTomeIndex] + (_TIM_ModIndex_Transmundane * 0x01000000))
            return Game.GetFormFromFile(_TIM_SpellTable_Vanilla_SpellTIMTomeID[localTomeIndex] + (_TIM_ModIndex_Transmundane * 0x01000000) , "Transmundane.esp") as Book
        endIf
    endIf

    


    ;int i = TomeList.Length

    ;while(i>=0)
    ;    i-=1
        ;Debug.Notification("_TIM: i: " + i)
    ;    if(TomeFormID == TomeList[i])
        ;    Debug.Notification("_TIM: found " + TomeFormID)
        ;    Debug.Notification("_TIM: returning " + TIMTomeList[i].GetFormID())
    ;        return TIMTomeList[i]
    ;    endIf
        
    ;endWhile

endFunction

int[] Function findSpellDetailsbySpellID(int localSpellID, int localModIndex)
    ;Debug.Notification("_TIM: findSpellDetailsbySpellID()")

    int localSpellIndex = -1
    int localSpellTomeIndex = -1
    int localSchoolIndex = -1
    int localArchtype1Index = -1
    int localArchtype2Index = -1
    int localArchtype3Index = -1

    if((localModIndex == _TIM_ModIndex_Apocalypse) && (localSpellIndex < 0))

        localSpellIndex = _TIM_SpellTable_Apocalypse1_SpellFormID.Find(localSpellID - (localModIndex * 0x01000000))

        if(localSpellIndex >= 0)
            localSpellTomeIndex = _TIM_SpellTable_Apocalypse1_SpellTomeID[localSpellIndex];
            localSchoolIndex    = _TIM_SpellTable_Apocalypse1_SchoolIndex[localSpellIndex];
            localArchtype1Index = _TIM_SpellTable_Apocalypse1_Archtype1Index[localSpellIndex];
            localArchtype2Index = _TIM_SpellTable_Apocalypse1_Archtype2Index[localSpellIndex];
            localArchtype3Index = _TIM_SpellTable_Apocalypse1_Archtype3Index[localSpellIndex];
        endIf

        if (localSpellIndex < 0)

            localSpellIndex = _TIM_SpellTable_Apocalypse2_SpellFormID.Find(localSpellID - (localModIndex * 0x01000000))

            if(localSpellIndex >= 0)
                localSpellTomeIndex = _TIM_SpellTable_Apocalypse2_SpellTomeID[localSpellIndex];
                localSchoolIndex    = _TIM_SpellTable_Apocalypse2_SchoolIndex[localSpellIndex];
                localArchtype1Index = _TIM_SpellTable_Apocalypse2_Archtype1Index[localSpellIndex];
                localArchtype2Index = _TIM_SpellTable_Apocalypse2_Archtype2Index[localSpellIndex];
                localArchtype3Index = _TIM_SpellTable_Apocalypse2_Archtype3Index[localSpellIndex];
            endIf
        endIf
    endIf

    ; Arcanum?
    if((localModIndex == _TIM_ModIndex_Arcanum) && (localSpellIndex < 0))
        localSpellIndex = _TIM_SpellTable_Arcanum_SpellFormID.Find(localSpellID - (localModIndex * 0x01000000))

        if(localSpellIndex >= 0)
            localSpellTomeIndex = _TIM_SpellTable_Arcanum_SpellTomeID[localSpellIndex];
            localSchoolIndex    = _TIM_SpellTable_Arcanum_SchoolIndex[localSpellIndex];
            localArchtype1Index = _TIM_SpellTable_Arcanum_Archtype1Index[localSpellIndex];
            localArchtype2Index = _TIM_SpellTable_Arcanum_Archtype2Index[localSpellIndex];
            localArchtype3Index = _TIM_SpellTable_Arcanum_Archtype3Index[localSpellIndex];
        endIf
    endIf

    ; ForgottenMagic?
    if((localModIndex == _TIM_ModIndex_ForgottenMagic) && (localSpellIndex < 0))
        localSpellIndex = _TIM_SpellTable_ForgottenMagic_SpellFormID.Find(localSpellID - (localModIndex * 0x01000000))

        if(localSpellIndex >= 0)
            localSpellTomeIndex = _TIM_SpellTable_ForgottenMagic_SpellTomeID[localSpellIndex];
            localSchoolIndex    = _TIM_SpellTable_ForgottenMagic_SchoolIndex[localSpellIndex];
            localArchtype1Index = _TIM_SpellTable_ForgottenMagic_Archtype1Index[localSpellIndex];
            localArchtype2Index = _TIM_SpellTable_ForgottenMagic_Archtype2Index[localSpellIndex];
            localArchtype3Index = _TIM_SpellTable_ForgottenMagic_Archtype3Index[localSpellIndex];
        endIf
    endIf

    ; Mysticism?
    if((localModIndex == _TIM_ModIndex_Mysticism) && (localSpellIndex < 0))
        localSpellIndex = _TIM_SpellTable_Mysticism_SpellFormID.Find(localSpellID - (localModIndex * 0x01000000))

        if(localSpellIndex >= 0)
            localSpellTomeIndex = _TIM_SpellTable_Mysticism_SpellTomeID[localSpellIndex];
            localSchoolIndex    = _TIM_SpellTable_Mysticism_SchoolIndex[localSpellIndex];
            localArchtype1Index = _TIM_SpellTable_Mysticism_Archtype1Index[localSpellIndex];
            localArchtype2Index = _TIM_SpellTable_Mysticism_Archtype2Index[localSpellIndex];
            localArchtype3Index = _TIM_SpellTable_Mysticism_Archtype3Index[localSpellIndex];
        endIf
    endIf

    ; Phenderix?
    if((localModIndex == _TIM_ModIndex_Phenderix) && (localSpellIndex < 0))
        localSpellIndex = _TIM_SpellTable_Phenderix_SpellFormID.Find(localSpellID - (localModIndex * 0x01000000))

        if(localSpellIndex >= 0)
            localSpellTomeIndex = _TIM_SpellTable_Phenderix_SpellTomeID[localSpellIndex];
            localSchoolIndex    = _TIM_SpellTable_Phenderix_SchoolIndex[localSpellIndex];
            localArchtype1Index = _TIM_SpellTable_Phenderix_Archtype1Index[localSpellIndex];
            localArchtype2Index = _TIM_SpellTable_Phenderix_Archtype2Index[localSpellIndex];
            localArchtype3Index = _TIM_SpellTable_Phenderix_Archtype3Index[localSpellIndex];
        endIf
    endIf

    ; Vanilla?
    if(((localModIndex == 0) || (localModIndex == 2) || (localModIndex == 4)) && (localSpellIndex < 0))
        localSpellIndex = _TIM_SpellTable_Vanilla_SpellFormID.Find(localSpellID)

        if(localSpellIndex >= 0)
            localSpellTomeIndex = _TIM_SpellTable_Vanilla_SpellTomeID[localSpellIndex];
            localSchoolIndex    = _TIM_SpellTable_Vanilla_SchoolIndex[localSpellIndex];
            localArchtype1Index = _TIM_SpellTable_Vanilla_Archtype1Index[localSpellIndex];
            localArchtype2Index = _TIM_SpellTable_Vanilla_Archtype2Index[localSpellIndex];
            localArchtype3Index = _TIM_SpellTable_Vanilla_Archtype3Index[localSpellIndex];
        endIf
    endIf

    int[] retval = new int[5]
    retval[0] = localSpellTomeIndex
    retval[1] = localSchoolIndex
    retval[2] = localArchtype1Index
    retval[3] = localArchtype2Index
    retval[4] = localArchtype3Index

    return retval
 
endFunction

Function addSpellXP(int amount, int LocalModIndex, int[] SpellFormID, int[] SpellEarnedXP, int[] SpellToLearnXP, int archtype)
    ;Debug.Notification("_TIM: addSpellXP() " + amount )

    Int iElement = SpellFormID.Length
    Int iIndex = 0

    While iIndex < iElement
        if(SpellEarnedXP[iIndex] < SpellToLearnXP[iIndex])
            SpellEarnedXP[iIndex] = SpellEarnedXP[iIndex] + amount
            if(SpellEarnedXP[iIndex] >= SpellToLearnXP[iIndex])
                ;player.addSpell SpellFormID[iIndex]  ;mods need modindex added back
                Debug.Notification("Advancement: " + _TIM_ArchtypeTable_Names[archtype])
                LearnSpell(SpellFormID[iIndex], LocalModIndex)
            elseif(SpellEarnedXP[iIndex] >= (SpellToLearnXP[iIndex] * 0.75))
                Debug.Notification("75% Progress: " + _TIM_ArchtypeTable_Names[archtype])
            elseif(SpellEarnedXP[iIndex] >= (SpellToLearnXP[iIndex] * 0.50))
                Debug.Notification("50% Progress: " + _TIM_ArchtypeTable_Names[archtype])
            elseif(SpellEarnedXP[iIndex] >= (SpellToLearnXP[iIndex] * 0.25))
                Debug.Notification("25% Progress: " + _TIM_ArchtypeTable_Names[archtype])
            endif
            iIndex = iElement - 1
        endif
        iIndex += 1
    EndWhile
endFunction

Function fillSpellXP(int SpellFormID, int[] SpellFormIDList, int[] SpellEarnedXPList, int[] SpellToLearnXPList)
    ;Debug.Notification("_TIM: fillSpellXP()")
    Int iElement = SpellFormIDList.Length
    Int iIndex = 0

    While iIndex < iElement
        if(SpellFormID == SpellFormIDList[iIndex])
            SpellEarnedXPList[iIndex] = SpellToLearnXPList[iIndex]
            iIndex = iElement - 1
        endIf
    iIndex += 1
EndWhile
endFunction

Function addArchtypeXP(int amount, int localArchtype1Index, int localArchtype2Index, int localArchtype3Index)

    ; wtb pointer to functions or nested arrays

   if((localArchtype1Index == 0) || (localArchtype2Index == 0) || (localArchtype3Index == 0))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Absorb_SpellFormID, _TIM_ArchtypeTable_Vanilla_Absorb_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Absorb_SpellToLearnXP,0)
    endif

    if((localArchtype1Index == 1) || (localArchtype2Index == 1) || (localArchtype3Index == 1))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Apparatus_SpellFormID, _TIM_ArchtypeTable_Vanilla_Apparatus_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Apparatus_SpellToLearnXP,1)
    endif

    if((localArchtype1Index == 2) || (localArchtype2Index == 2) || (localArchtype3Index == 2))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Armor_SpellFormID, _TIM_ArchtypeTable_Vanilla_Armor_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Armor_SpellToLearnXP,2)
    endif

    if((localArchtype1Index == 3) || (localArchtype2Index == 3) || (localArchtype3Index == 3))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Ash_SpellFormID, _TIM_ArchtypeTable_Vanilla_Ash_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Ash_SpellToLearnXP,3)
    endif

    if((localArchtype1Index == 4) || (localArchtype2Index == 4) || (localArchtype3Index == 4))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Cloak_SpellFormID, _TIM_ArchtypeTable_Vanilla_Cloak_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Cloak_SpellToLearnXP,4)
    endif

    if((localArchtype1Index == 5) || (localArchtype2Index == 5) || (localArchtype3Index == 5))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Damage_SpellFormID, _TIM_ArchtypeTable_Vanilla_Damage_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Damage_SpellToLearnXP,5)
    endif

    if((localArchtype1Index == 6) || (localArchtype2Index == 6) || (localArchtype3Index == 6))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Death_SpellFormID, _TIM_ArchtypeTable_Vanilla_Death_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Death_SpellToLearnXP,6)
    endif

    if((localArchtype1Index == 7) || (localArchtype2Index == 7) || (localArchtype3Index == 7))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Disease_SpellFormID, _TIM_ArchtypeTable_Vanilla_Disease_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Disease_SpellToLearnXP,7)
    endif

    if((localArchtype1Index == 8) || (localArchtype2Index == 8) || (localArchtype3Index == 8))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Earth_SpellFormID, _TIM_ArchtypeTable_Vanilla_Earth_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Earth_SpellToLearnXP,8)
    endif

    if((localArchtype1Index == 9) || (localArchtype2Index == 9) || (localArchtype3Index == 9))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Enhance_SpellFormID, _TIM_ArchtypeTable_Vanilla_Enhance_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Enhance_SpellToLearnXP,9)
    endif

    if((localArchtype1Index == 10) || (localArchtype2Index == 10) || (localArchtype3Index == 10))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Fabricate_SpellFormID, _TIM_ArchtypeTable_Vanilla_Fabricate_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Fabricate_SpellToLearnXP,10)
    endif

    if((localArchtype1Index == 11) || (localArchtype2Index == 11) || (localArchtype3Index == 11))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Fire_SpellFormID, _TIM_ArchtypeTable_Vanilla_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Fire_SpellToLearnXP,11)
    endif

    if((localArchtype1Index == 12) || (localArchtype2Index == 12) || (localArchtype3Index == 12))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Force_SpellFormID, _TIM_ArchtypeTable_Vanilla_Force_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Force_SpellToLearnXP,12)
    endif

    if((localArchtype1Index == 13) || (localArchtype2Index == 13) || (localArchtype3Index == 13))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Frost_SpellFormID, _TIM_ArchtypeTable_Vanilla_Frost_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Frost_SpellToLearnXP,13)
    endif

    if((localArchtype1Index == 14) || (localArchtype2Index == 14) || (localArchtype3Index == 14))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Impair_SpellFormID, _TIM_ArchtypeTable_Vanilla_Impair_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Impair_SpellToLearnXP,14)
    endif

    if((localArchtype1Index == 15) || (localArchtype2Index == 15) || (localArchtype3Index == 15))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Life_SpellFormID, _TIM_ArchtypeTable_Vanilla_Life_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Life_SpellToLearnXP,15)
    endif

    if((localArchtype1Index == 16) || (localArchtype2Index == 16) || (localArchtype3Index == 16))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Mental_SpellFormID, _TIM_ArchtypeTable_Vanilla_Mental_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Mental_SpellToLearnXP,16)
    endif

    if((localArchtype1Index == 17) || (localArchtype2Index == 17) || (localArchtype3Index == 17))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Metamagic_SpellFormID, _TIM_ArchtypeTable_Vanilla_Metamagic_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Metamagic_SpellToLearnXP,17)
    endif

    if((localArchtype1Index == 18) || (localArchtype2Index == 18) || (localArchtype3Index == 18))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Oblivion_SpellFormID, _TIM_ArchtypeTable_Vanilla_Oblivion_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Oblivion_SpellToLearnXP,18)
    endif

    if((localArchtype1Index == 19) || (localArchtype2Index == 19) || (localArchtype3Index == 19))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Poison_SpellFormID, _TIM_ArchtypeTable_Vanilla_Poison_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Poison_SpellToLearnXP,19)
    endif

    if((localArchtype1Index == 20) || (localArchtype2Index == 20) || (localArchtype3Index == 20))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Projectile_SpellFormID, _TIM_ArchtypeTable_Vanilla_Projectile_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Projectile_SpellToLearnXP,20)
    endif

    if((localArchtype1Index == 21) || (localArchtype2Index == 21) || (localArchtype3Index == 21))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Recover_SpellFormID, _TIM_ArchtypeTable_Vanilla_Recover_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Recover_SpellToLearnXP,21)
    endif

    if((localArchtype1Index == 22) || (localArchtype2Index == 22) || (localArchtype3Index == 22))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Rune_SpellFormID, _TIM_ArchtypeTable_Vanilla_Rune_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Rune_SpellToLearnXP,22)
    endif

    if((localArchtype1Index == 23) || (localArchtype2Index == 23) || (localArchtype3Index == 23))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Sense_SpellFormID, _TIM_ArchtypeTable_Vanilla_Sense_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Sense_SpellToLearnXP,23)
    endif

    if((localArchtype1Index == 24) || (localArchtype2Index == 24) || (localArchtype3Index == 24))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Shadow_SpellFormID, _TIM_ArchtypeTable_Vanilla_Shadow_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Shadow_SpellToLearnXP,24)
    endif

    if((localArchtype1Index == 25) || (localArchtype2Index == 25) || (localArchtype3Index == 25))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Shock_SpellFormID, _TIM_ArchtypeTable_Vanilla_Shock_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Shock_SpellToLearnXP,25)
    endif

    if((localArchtype1Index == 26) || (localArchtype2Index == 26) || (localArchtype3Index == 26))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Soul_SpellFormID, _TIM_ArchtypeTable_Vanilla_Soul_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Soul_SpellToLearnXP,26)
    endif

    if((localArchtype1Index == 27) || (localArchtype2Index == 27) || (localArchtype3Index == 27))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Space_SpellFormID, _TIM_ArchtypeTable_Vanilla_Space_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Space_SpellToLearnXP,27)
    endif

    if((localArchtype1Index == 28) || (localArchtype2Index == 28) || (localArchtype3Index == 28))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Sun_SpellFormID, _TIM_ArchtypeTable_Vanilla_Sun_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Sun_SpellToLearnXP,28)
    endif

    if((localArchtype1Index == 29) || (localArchtype2Index == 29) || (localArchtype3Index == 29))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Time_SpellFormID, _TIM_ArchtypeTable_Vanilla_Time_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Time_SpellToLearnXP,29)
    endif

    if((localArchtype1Index == 30) || (localArchtype2Index == 30) || (localArchtype3Index == 30))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Translocate_SpellFormID, _TIM_ArchtypeTable_Vanilla_Translocate_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Translocate_SpellToLearnXP,30)
    endif

    if((localArchtype1Index == 31) || (localArchtype2Index == 31) || (localArchtype3Index == 31))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Transmute_SpellFormID, _TIM_ArchtypeTable_Vanilla_Transmute_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Transmute_SpellToLearnXP,31)
    endif

    if((localArchtype1Index == 32) || (localArchtype2Index == 32) || (localArchtype3Index == 32))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Wall_SpellFormID, _TIM_ArchtypeTable_Vanilla_Wall_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Wall_SpellToLearnXP,32)
    endif

    if((localArchtype1Index == 33) || (localArchtype2Index == 33) || (localArchtype3Index == 33))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Ward_SpellFormID, _TIM_ArchtypeTable_Vanilla_Ward_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Ward_SpellToLearnXP,33)
    endif

    if((localArchtype1Index == 34) || (localArchtype2Index == 34) || (localArchtype3Index == 34))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Ward_SpellFormID, _TIM_ArchtypeTable_Vanilla_Ward_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Ward_SpellToLearnXP,34)
    endif

    if((localArchtype1Index == 35) || (localArchtype2Index == 35) || (localArchtype3Index == 35))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Wind_SpellFormID, _TIM_ArchtypeTable_Vanilla_Wind_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Wind_SpellToLearnXP,35)
    endif

    if((localArchtype1Index == 36) || (localArchtype2Index == 36) || (localArchtype3Index == 36))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        ;addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Wind_SpellFormID, _TIM_ArchtypeTable_Vanilla_Wind_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Wind_SpellToLearnXP,35)
    endif

    if((localArchtype1Index == 37) || (localArchtype2Index == 37) || (localArchtype3Index == 37))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        ;addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Wind_SpellFormID, _TIM_ArchtypeTable_Vanilla_Wind_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Wind_SpellToLearnXP,35)
    endif

    if((localArchtype1Index == 38) || (localArchtype2Index == 38) || (localArchtype3Index == 38))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        ;addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Wind_SpellFormID, _TIM_ArchtypeTable_Vanilla_Wind_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Wind_SpellToLearnXP,35)
    endif

    if((localArchtype1Index == 39) || (localArchtype2Index == 39) || (localArchtype3Index == 39))
        if(_TIM_Loaded_Apocalypse == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Apocalypse, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    addSpellXP(1,_TIM_ModIndex_Arcanum, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    addSpellXP(1, _TIM_ModIndex_ForgottenMagic, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Mysticism, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    addSpellXP(1, _TIM_ModIndex_Phenderix, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        ;addSpellXP(amount * _TIM_XPRate_Spells, 0, _TIM_ArchtypeTable_Vanilla_Wind_SpellFormID, _TIM_ArchtypeTable_Vanilla_Wind_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Wind_SpellToLearnXP,35)
    endif

endFunction

Function LearnSpellfromNote(int SpellNoteFormID)
    Debug.Notification("_TIM: LearnSpellfromNote(): " + SpellNoteFormID)
    if(SpellNoteFormID == 84075060)
        LearnSpell(275236, 0)
    endif

    if(SpellNoteFormID == 84075064)
        LearnSpell(116617, 0)
    endif



endFunction

Function LearnSpell(int LearnSpellFormID, int LearnSpellModIndex)
    ;Debug.Notification("_TIM: LearnSpell()")

    ; teach the spell
    if(LearnSpellModIndex == _TIM_ModIndex_Apocalypse)
        _TIM_PlayerRef.AddSpell(Game.GetFormFromFile(LearnSpellFormID + (LearnSpellModIndex * 0x01000000), "Apocalypse - Magic of Skyrim.esp") as Spell)
    endIf
    if(LearnSpellModIndex == _TIM_ModIndex_Arcanum)
        _TIM_PlayerRef.AddSpell(Game.GetFormFromFile(LearnSpellFormID + (LearnSpellModIndex * 0x01000000), "Arcanum.esp") as Spell)
    endIf
    if(LearnSpellModIndex == _TIM_ModIndex_ForgottenMagic)
        _TIM_PlayerRef.AddSpell(Game.GetFormFromFile(LearnSpellFormID + (LearnSpellModIndex * 0x01000000), "ForgottenMagic_Redone.esp") as Spell)
    endIf
    if(LearnSpellModIndex == _TIM_ModIndex_Mysticism)
        _TIM_PlayerRef.AddSpell(Game.GetFormFromFile(LearnSpellFormID + (LearnSpellModIndex * 0x01000000), "MysticismMagic.esp") as Spell)
    endIf
    if(LearnSpellModIndex == _TIM_ModIndex_Phenderix)
        _TIM_PlayerRef.AddSpell(Game.GetFormFromFile(LearnSpellFormID + (LearnSpellModIndex * 0x01000000), "Phenderix Magic Evolved.esp") as Spell)
    endIf
    if((LearnSpellModIndex == 0) || (LearnSpellModIndex == 2) || (LearnSpellModIndex == 4))
        _TIM_PlayerRef.AddSpell(Game.GetFormFromFile(LearnSpellFormID, "Skyrim.esm") as Spell)
        _TIM_PlayerRef.AddSpell(Game.GetFormFromFile(LearnSpellFormID, "Dawnguard.esm") as Spell)
        _TIM_PlayerRef.AddSpell(Game.GetFormFromFile(LearnSpellFormID, "Dragonbnorn.esm") as Spell)
    endIf

    ; mark it as learned in the archtype tables

    ; find the parameters of the spell we're learning
    ;   lookupResults[0] = SpellTomeIndex
    ;   lookupResults[1] = SchoolIndex
    ;   lookupResults[2] = Archtype1Index
    ;   lookupResults[3] = Archtype2Index
    ;   lookupResults[4] = Archtype3Index
    int[] lookupResults = findSpellDetailsbySpellID(LearnSpellFormID, LearnSpellModIndex)

    ; mark it as learned in every relevant archtype
    ; wtb pointer to functions
    if((lookupResults[2] == 0) || (lookupResults[3] == 0) || (lookupResults[4] == 0))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Absorb_SpellFormID, _TIM_ArchtypeTable_Vanilla_Absorb_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Absorb_SpellToLearnXP)
    endif

    if((lookupResults[2] == 1) || (lookupResults[3] == 1) || (lookupResults[4] == 1))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Apparatus_SpellFormID, _TIM_ArchtypeTable_Vanilla_Apparatus_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Apparatus_SpellToLearnXP)
    endif

    if((lookupResults[2] == 2) || (lookupResults[3] == 2) || (lookupResults[4] == 2))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Armor_SpellFormID, _TIM_ArchtypeTable_Vanilla_Armor_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Armor_SpellToLearnXP)
    endif

    if((lookupResults[2] == 3) || (lookupResults[3] == 3) || (lookupResults[4] == 3))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Ash_SpellFormID, _TIM_ArchtypeTable_Vanilla_Ash_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Ash_SpellToLearnXP)
    endif

    if((lookupResults[2] == 4) || (lookupResults[3] == 4) || (lookupResults[4] == 4))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Cloak_SpellFormID, _TIM_ArchtypeTable_Vanilla_Cloak_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Cloak_SpellToLearnXP)
    endif

    if((lookupResults[2] == 5) || (lookupResults[3] == 5) || (lookupResults[4] == 5))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Damage_SpellFormID, _TIM_ArchtypeTable_Vanilla_Damage_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Damage_SpellToLearnXP)
    endif

    if((lookupResults[2] == 6) || (lookupResults[3] == 6) || (lookupResults[4] == 6))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Death_SpellFormID, _TIM_ArchtypeTable_Vanilla_Death_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Death_SpellToLearnXP)
    endif

    if((lookupResults[2] == 7) || (lookupResults[3] == 7) || (lookupResults[4] == 7))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Disease_SpellFormID, _TIM_ArchtypeTable_Vanilla_Disease_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Disease_SpellToLearnXP)
    endif

    if((lookupResults[2] == 8) || (lookupResults[3] == 8) || (lookupResults[4] == 8))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Earth_SpellFormID, _TIM_ArchtypeTable_Vanilla_Earth_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Earth_SpellToLearnXP)
    endif

    if((lookupResults[2] == 9) || (lookupResults[3] == 9) || (lookupResults[4] == 9))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Enhance_SpellFormID, _TIM_ArchtypeTable_Vanilla_Enhance_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Enhance_SpellToLearnXP)
    endif

    if((lookupResults[2] == 10) || (lookupResults[3] == 10) || (lookupResults[4] == 10))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Fabricate_SpellFormID, _TIM_ArchtypeTable_Vanilla_Fabricate_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Fabricate_SpellToLearnXP)
    endif

    if((lookupResults[2] == 11) || (lookupResults[3] == 11) || (lookupResults[4] == 11))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Fire_SpellFormID, _TIM_ArchtypeTable_Vanilla_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Fire_SpellToLearnXP)
    endif

    if((lookupResults[2] == 12) || (lookupResults[3] == 12) || (lookupResults[4] == 12))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Force_SpellFormID, _TIM_ArchtypeTable_Vanilla_Force_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Force_SpellToLearnXP)
    endif

    if((lookupResults[2] == 13) || (lookupResults[3] == 13) || (lookupResults[4] == 13))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Frost_SpellFormID, _TIM_ArchtypeTable_Vanilla_Frost_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Frost_SpellToLearnXP)
    endif

    if((lookupResults[2] == 14) || (lookupResults[3] == 14) || (lookupResults[4] == 14))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Impair_SpellFormID, _TIM_ArchtypeTable_Vanilla_Impair_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Impair_SpellToLearnXP)
    endif

    if((lookupResults[2] == 15) || (lookupResults[3] == 15) || (lookupResults[4] == 15))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Life_SpellFormID, _TIM_ArchtypeTable_Vanilla_Life_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Life_SpellToLearnXP)
    endif

    if((lookupResults[2] == 16) || (lookupResults[3] == 16) || (lookupResults[4] == 16))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Mental_SpellFormID, _TIM_ArchtypeTable_Vanilla_Mental_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Mental_SpellToLearnXP)
    endif

    if((lookupResults[2] == 17) || (lookupResults[3] == 17) || (lookupResults[4] == 17))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Metamagic_SpellFormID, _TIM_ArchtypeTable_Vanilla_Metamagic_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Metamagic_SpellToLearnXP)
    endif

    if((lookupResults[2] == 18) || (lookupResults[3] == 18) || (lookupResults[4] == 18))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Oblivion_SpellFormID, _TIM_ArchtypeTable_Vanilla_Oblivion_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Oblivion_SpellToLearnXP)
    endif

    if((lookupResults[2] == 19) || (lookupResults[3] == 19) || (lookupResults[4] == 19))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Poison_SpellFormID, _TIM_ArchtypeTable_Vanilla_Poison_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Poison_SpellToLearnXP)
    endif

    if((lookupResults[2] == 20) || (lookupResults[3] == 20) || (lookupResults[4] == 20))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Projectile_SpellFormID, _TIM_ArchtypeTable_Vanilla_Projectile_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Projectile_SpellToLearnXP)
    endif

    if((lookupResults[2] == 21) || (lookupResults[3] == 21) || (lookupResults[4] == 21))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Recover_SpellFormID, _TIM_ArchtypeTable_Vanilla_Recover_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Recover_SpellToLearnXP)
    endif

    if((lookupResults[2] == 22) || (lookupResults[3] == 22) || (lookupResults[4] == 22))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Rune_SpellFormID, _TIM_ArchtypeTable_Vanilla_Rune_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Rune_SpellToLearnXP)
    endif

    if((lookupResults[2] == 23) || (lookupResults[3] == 23) || (lookupResults[4] == 23))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Sense_SpellFormID, _TIM_ArchtypeTable_Vanilla_Sense_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Sense_SpellToLearnXP)
    endif

    if((lookupResults[2] == 24) || (lookupResults[3] == 24) || (lookupResults[4] == 24))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Shadow_SpellFormID, _TIM_ArchtypeTable_Vanilla_Shadow_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Shadow_SpellToLearnXP)
    endif

    if((lookupResults[2] == 25) || (lookupResults[3] == 25) || (lookupResults[4] == 25))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Shock_SpellFormID, _TIM_ArchtypeTable_Vanilla_Shock_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Shock_SpellToLearnXP)
    endif

    if((lookupResults[2] == 26) || (lookupResults[3] == 26) || (lookupResults[4] == 26))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Soul_SpellFormID, _TIM_ArchtypeTable_Vanilla_Soul_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Soul_SpellToLearnXP)
    endif

    if((lookupResults[2] == 27) || (lookupResults[3] == 27) || (lookupResults[4] == 27))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Soul_SpellFormID, _TIM_ArchtypeTable_Vanilla_Soul_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Soul_SpellToLearnXP)
    endif

    if((lookupResults[2] == 28) || (lookupResults[3] == 28) || (lookupResults[4] == 28))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Sun_SpellFormID, _TIM_ArchtypeTable_Vanilla_Sun_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Sun_SpellToLearnXP)
    endif

    if((lookupResults[2] == 29) || (lookupResults[3] == 29) || (lookupResults[4] == 29))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Time_SpellFormID, _TIM_ArchtypeTable_Vanilla_Time_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Time_SpellToLearnXP)
    endif

    if((lookupResults[2] == 30) || (lookupResults[3] == 30) || (lookupResults[4] == 30))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Translocate_SpellFormID, _TIM_ArchtypeTable_Vanilla_Translocate_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Translocate_SpellToLearnXP)
    endif

    if((lookupResults[2] == 31) || (lookupResults[3] == 31) || (lookupResults[4] == 31))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Transmute_SpellFormID, _TIM_ArchtypeTable_Vanilla_Transmute_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Transmute_SpellToLearnXP)
    endif

    if((lookupResults[2] == 32) || (lookupResults[3] == 32) || (lookupResults[4] == 32))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Wall_SpellFormID, _TIM_ArchtypeTable_Vanilla_Wall_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Wall_SpellToLearnXP)
    endif

    if((lookupResults[2] == 33) || (lookupResults[3] == 33) || (lookupResults[4] == 33))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Ward_SpellFormID, _TIM_ArchtypeTable_Vanilla_Ward_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Ward_SpellToLearnXP)
    endif

    if((lookupResults[2] == 34) || (lookupResults[3] == 34) || (lookupResults[4] == 34))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Ward_SpellFormID, _TIM_ArchtypeTable_Vanilla_Ward_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Ward_SpellToLearnXP)
    endif

    if((lookupResults[2] == 35) || (lookupResults[3] == 35) || (lookupResults[4] == 35))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Wind_SpellFormID, _TIM_ArchtypeTable_Vanilla_Wind_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Wind_SpellToLearnXP)
    endif

    if((lookupResults[2] == 36) || (lookupResults[3] == 36) || (lookupResults[4] == 36))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        ;fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Wind_SpellFormID, _TIM_ArchtypeTable_Vanilla_Wind_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Wind_SpellToLearnXP)
    endif

    if((lookupResults[2] == 37) || (lookupResults[3] == 37) || (lookupResults[4] == 37))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        ;fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Wind_SpellFormID, _TIM_ArchtypeTable_Vanilla_Wind_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Wind_SpellToLearnXP)
    endif

    if((lookupResults[2] == 38) || (lookupResults[3] == 38) || (lookupResults[4] == 38))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        ;fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Wind_SpellFormID, _TIM_ArchtypeTable_Vanilla_Wind_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Wind_SpellToLearnXP)
    endif

    if((lookupResults[2] == 39) || (lookupResults[3] == 39) || (lookupResults[4] == 39))
        if((_TIM_Loaded_Apocalypse == 1) && (LearnSpellModIndex == _TIM_ModIndex_Apocalypse))
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellFormID, _TIM_ArchtypeTable_Apocalypse_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Apocalypse_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Arcanum == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellFormID, _TIM_ArchtypeTable_Arcanum_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Arcanum_Fire_SpellToLearnXP)
        ;endif
        ;if(_TIM_Loaded_ForgottenMagic == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellFormID, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellEarnedXP, _TIM_ArchtypeTable_ForgottenMagic_Fire_SpellToLearnXP)
        ;endif
        if(_TIM_Loaded_Mysticism == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellFormID, _TIM_ArchtypeTable_Mysticism_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Mysticism_Fire_SpellToLearnXP)
        endif
        ;if(_TIM_Loaded_Phenderix == 1)
        ;    fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellFormID, _TIM_ArchtypeTable_Phenderix_Fire_SpellEarnedXP, _TIM_ArchtypeTable_Phenderix_Fire_SpellToLearnXP)
        ;endif
        ;fillSpellXP(LearnSpellFormID, _TIM_ArchtypeTable_Vanilla_Wind_SpellFormID, _TIM_ArchtypeTable_Vanilla_Wind_SpellEarnedXP, _TIM_ArchtypeTable_Vanilla_Wind_SpellToLearnXP)
    endif

endFunction