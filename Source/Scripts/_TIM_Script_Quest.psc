Scriptname _TIM_Script_Quest extends Quest  

;General Globals
GlobalVariable Property _TIM_Global_XPRate_Spells Auto
GlobalVariable Property _TIM_Global_XPRate_Workbooks Auto
{default: 3.0, range from 1-5, smaller is slower}

;GlobalVariable Property _TIM_XP_Rate_School_Alteration Auto
;GlobalVariable Property _TIM_XP_Rate_School_Conjuration Auto
;GlobalVariable Property _TIM_XP_Rate_School_Destruction Auto
;GlobalVariable Property _TIM_XP_Rate_School_Illusion Auto
;GlobalVariable Property _TIM_XP_Rate_School_Restoration Auto

;GlobalVariable Property _TIM_XP_Rate_Aspect_00 Auto
;...etc

;MiscObject Property _TIM_XP_Currency_00 Auto
;MiscObject Property _TIM_XP_Currency_01 Auto

Actor Property _TIM_PlayerRef Auto
Float Property _TIM_Version Auto

int[] _TIM_SchoolTable_EarnedXP
int[] _TIM_AspectTable_EarnedXP
int[] _TIM_AspectTable_Currency

string[] _TIM_SchoolTable_Names 
string[] _TIM_AspectTable_Names

;Mod Status Variables
int _TIM_Loaded_Apocalypse
int _TIM_Loaded_Mysticism

int _TIM_ModIndex_Apocalypse
int _TIM_ModIndex_Mysticism
int _TIM_ModIndex_Transmundane

int _TIM_XPRate_Spells
int _TIM_XPRate_Workbooks

string _TIM_ModFilename_Apocalypse
string _TIM_ModFilename_Mysticism
string _TIM_ModFilename_Transmundane

string _TIM_ModFilename_Vanilla_Skyrim
string _TIM_ModFilename_Vanilla_Dawnguard
string _TIM_ModFilename_Vanilla_Dragonborn

;Spell Tables******************************************************************
int[] Property _TIM_SpellTable_Apocalypse1_SpellFormID Auto
int[] Property _TIM_SpellTable_Apocalypse1_SchoolIndex Auto
int[] Property _TIM_SpellTable_Apocalypse1_Aspect1Index Auto
int[] Property _TIM_SpellTable_Apocalypse1_Aspect2Index Auto
int[] Property _TIM_SpellTable_Apocalypse1_Aspect3Index Auto
int[] Property _TIM_SpellTable_Apocalypse1_Aspect4Index Auto
int[] Property _TIM_SpellTable_Apocalypse1_SpellTomeID Auto
int[] Property _TIM_SpellTable_Apocalypse1_SpellWorkbookID Auto
int[] Property _TIM_SpellTable_Apocalypse1_SpellManualID Auto

int[] Property _TIM_SpellTable_Apocalypse2_SpellFormID Auto
int[] Property _TIM_SpellTable_Apocalypse2_SchoolIndex Auto
int[] Property _TIM_SpellTable_Apocalypse2_Aspect1Index Auto
int[] Property _TIM_SpellTable_Apocalypse2_Aspect2Index Auto
int[] Property _TIM_SpellTable_Apocalypse2_Aspect3Index Auto
int[] Property _TIM_SpellTable_Apocalypse2_Aspect4Index Auto
int[] Property _TIM_SpellTable_Apocalypse2_SpellTomeID Auto
int[] Property _TIM_SpellTable_Apocalypse2_SpellWorkbookID Auto
int[] Property _TIM_SpellTable_Apocalypse2_SpellManualID Auto

int[] Property _TIM_SpellTable_Mysticism_SpellFormID Auto
int[] Property _TIM_SpellTable_Mysticism_SchoolIndex Auto
int[] Property _TIM_SpellTable_Mysticism_Aspect1Index Auto
int[] Property _TIM_SpellTable_Mysticism_Aspect2Index Auto
int[] Property _TIM_SpellTable_Mysticism_Aspect3Index Auto
int[] Property _TIM_SpellTable_Mysticism_Aspect4Index Auto
int[] Property _TIM_SpellTable_Mysticism_SpellTomeID Auto
int[] Property _TIM_SpellTable_Mysticism_SpellWorkbookID Auto
int[] Property _TIM_SpellTable_Mysticism_SpellManualID Auto

int[] Property _TIM_SpellTable_Vanilla_SpellFormID Auto
int[] Property _TIM_SpellTable_Vanilla_SchoolIndex Auto
int[] Property _TIM_SpellTable_Vanilla_Aspect1Index Auto
int[] Property _TIM_SpellTable_Vanilla_Aspect2Index Auto
int[] Property _TIM_SpellTable_Vanilla_Aspect3Index Auto
int[] Property _TIM_SpellTable_Vanilla_Aspect4Index Auto
int[] Property _TIM_SpellTable_Vanilla_SpellTomeID Auto
int[] Property _TIM_SpellTable_Vanilla_SpellWorkbookID Auto
int[] Property _TIM_SpellTable_Vanilla_SpellManualID Auto

;Aspect Tables***************************************************************
int[] Property _TIM_AspectTable_Apocalypse_00_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_01_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_02_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_03_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_04_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_05_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_06_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_07_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_08_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_09_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_10_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_11_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_12_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_13_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_14_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_15_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_16_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_17_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_18_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_19_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_20_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_21_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_22_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_23_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_24_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_25_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_26_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_27_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_28_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_29_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_30_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_31_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_32_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_33_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_34_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_35_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_36_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_37_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_38_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_39_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_40_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_41_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_42_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_43_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_44_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_45_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_46_SpellFormID Auto
int[] Property _TIM_AspectTable_Apocalypse_47_SpellFormID Auto

int[] Property _TIM_AspectTable_Apocalypse_00_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_01_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_02_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_03_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_04_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_05_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_06_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_07_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_08_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_09_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_10_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_11_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_12_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_13_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_14_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_15_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_16_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_17_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_18_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_19_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_20_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_21_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_22_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_23_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_24_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_25_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_26_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_27_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_28_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_29_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_30_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_31_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_32_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_33_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_34_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_35_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_36_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_37_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_38_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_39_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_40_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_41_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_42_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_43_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_44_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_45_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_46_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Apocalypse_47_SpellXPToLearn Auto

int[] Property _TIM_AspectTable_Apocalypse_00_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_01_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_02_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_03_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_04_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_05_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_06_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_07_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_08_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_09_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_10_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_11_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_12_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_13_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_14_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_15_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_16_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_17_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_18_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_19_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_20_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_21_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_22_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_23_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_24_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_25_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_26_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_27_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_28_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_29_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_30_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_31_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_32_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_33_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_34_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_35_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_36_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_37_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_38_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_39_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_40_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_41_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_42_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_43_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_44_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_45_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_46_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Apocalypse_47_SpellXPEarned Auto

int[] Property _TIM_AspectTable_Mysticism_00_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_01_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_02_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_03_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_04_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_05_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_06_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_07_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_08_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_09_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_10_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_11_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_12_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_13_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_14_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_15_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_16_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_17_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_18_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_19_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_20_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_21_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_22_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_23_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_24_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_25_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_26_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_27_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_28_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_29_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_30_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_31_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_32_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_33_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_34_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_35_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_36_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_37_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_38_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_39_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_40_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_41_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_42_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_43_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_44_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_45_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_46_SpellFormID Auto
int[] Property _TIM_AspectTable_Mysticism_47_SpellFormID Auto

int[] Property _TIM_AspectTable_Mysticism_00_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_01_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_02_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_03_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_04_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_05_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_06_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_07_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_08_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_09_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_10_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_11_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_12_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_13_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_14_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_15_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_16_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_17_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_18_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_19_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_20_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_21_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_22_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_23_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_24_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_25_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_26_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_27_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_28_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_29_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_30_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_31_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_32_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_33_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_34_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_35_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_36_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_37_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_38_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_39_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_40_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_41_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_42_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_43_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_44_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_45_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_46_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Mysticism_47_SpellXPToLearn Auto

int[] Property _TIM_AspectTable_Mysticism_00_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_01_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_02_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_03_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_04_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_05_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_06_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_07_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_08_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_09_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_10_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_11_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_12_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_13_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_14_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_15_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_16_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_17_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_18_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_19_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_20_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_21_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_22_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_23_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_24_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_25_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_26_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_27_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_28_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_29_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_30_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_31_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_32_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_33_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_34_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_35_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_36_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_37_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_38_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_39_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_40_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_41_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_42_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_43_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_44_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_45_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_46_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Mysticism_47_SpellXPEarned Auto

int[] Property _TIM_AspectTable_Vanilla_00_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_01_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_02_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_03_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_04_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_05_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_06_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_07_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_08_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_09_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_10_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_11_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_12_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_13_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_14_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_15_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_16_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_17_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_18_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_19_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_20_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_21_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_22_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_23_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_24_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_25_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_26_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_27_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_28_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_29_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_30_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_31_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_32_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_33_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_34_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_35_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_36_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_37_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_38_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_39_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_40_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_41_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_42_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_43_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_44_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_45_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_46_SpellFormID Auto
int[] Property _TIM_AspectTable_Vanilla_47_SpellFormID Auto

int[] Property _TIM_AspectTable_Vanilla_00_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_01_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_02_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_03_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_04_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_05_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_06_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_07_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_08_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_09_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_10_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_11_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_12_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_13_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_14_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_15_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_16_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_17_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_18_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_19_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_20_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_21_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_22_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_23_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_24_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_25_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_26_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_27_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_28_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_29_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_30_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_31_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_32_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_33_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_34_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_35_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_36_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_37_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_38_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_39_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_40_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_41_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_42_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_43_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_44_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_45_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_46_SpellXPToLearn Auto
int[] Property _TIM_AspectTable_Vanilla_47_SpellXPToLearn Auto

int[] Property _TIM_AspectTable_Vanilla_00_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_01_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_02_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_03_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_04_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_05_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_06_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_07_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_08_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_09_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_10_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_11_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_12_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_13_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_14_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_15_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_16_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_17_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_18_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_19_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_20_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_21_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_22_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_23_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_24_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_25_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_26_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_27_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_28_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_29_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_30_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_31_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_32_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_33_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_34_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_35_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_36_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_37_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_38_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_39_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_40_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_41_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_42_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_43_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_44_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_45_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_46_SpellXPEarned Auto
int[] Property _TIM_AspectTable_Vanilla_47_SpellXPEarned Auto

;Init and Utility Functions****************************************************

Event OnInit()
    ;Debug.Notification("_TIM: Script_Quest.OnInit()")
    Maintenance()
endEvent

Function Maintenance()
    ;Debug.Notification("_TIM: Script_Quest.Maintenance()" )
	If _TIM_Version < 0.50 ; Current version
		If _TIM_Version
            Debug.Notification("_TIM: Updating from version " + _TIM_Version)

            _TIM_SchoolTable_Names[0] = "Alteration"
            _TIM_SchoolTable_Names[1] = "Conjuration"
            _TIM_SchoolTable_Names[2] = "Destruction"
            _TIM_SchoolTable_Names[3] = "Illusion"
            _TIM_SchoolTable_Names[4] = "Restoration"

            _TIM_AspectTable_Names[0]="Absorb"
            _TIM_AspectTable_Names[1]="Aggression"
            _TIM_AspectTable_Names[2]="Ash"
            _TIM_AspectTable_Names[3]="Automation"
            _TIM_AspectTable_Names[4]="Bind"
            _TIM_AspectTable_Names[5]="Blood"
            _TIM_AspectTable_Names[6]="Cloak"
            _TIM_AspectTable_Names[7]="Command"
            _TIM_AspectTable_Names[8]="Creature"
            _TIM_AspectTable_Names[9]="Death"
            _TIM_AspectTable_Names[10]="Disease"
            _TIM_AspectTable_Names[11]="Divine"
            _TIM_AspectTable_Names[12]="Dragon"
            _TIM_AspectTable_Names[13]="Earth"
            _TIM_AspectTable_Names[14]="Enhance"
            _TIM_AspectTable_Names[15]="Fabricate"
            _TIM_AspectTable_Names[16]="Fire"
            _TIM_AspectTable_Names[17]="Force"
            _TIM_AspectTable_Names[18]="Frost"
            _TIM_AspectTable_Names[19]="Gravity"
            _TIM_AspectTable_Names[20]="Health"
            _TIM_AspectTable_Names[21]="Influence"
            _TIM_AspectTable_Names[22]="Light"
            _TIM_AspectTable_Names[23]="Magic"
            _TIM_AspectTable_Names[24]="Magicka"
            _TIM_AspectTable_Names[25]="Melee"
            _TIM_AspectTable_Names[26]="Metamagic"
            _TIM_AspectTable_Names[27]="Mobility"
            _TIM_AspectTable_Names[28]="Morale"
            _TIM_AspectTable_Names[29]="Oblivion"
            _TIM_AspectTable_Names[30]="Perception"
            _TIM_AspectTable_Names[31]="Poison"
            _TIM_AspectTable_Names[32]="Protection"
            _TIM_AspectTable_Names[33]="Recovery"
            _TIM_AspectTable_Names[34]="Resistance"
            _TIM_AspectTable_Names[35]="Rune"
            _TIM_AspectTable_Names[36]="Shadow"
            _TIM_AspectTable_Names[37]="Shock"
            _TIM_AspectTable_Names[38]="Skill"
            _TIM_AspectTable_Names[39]="Soul"
            _TIM_AspectTable_Names[40]="Stamina"
            _TIM_AspectTable_Names[41]="Teleport"
            _TIM_AspectTable_Names[42]="Time"
            _TIM_AspectTable_Names[43]="Transmute"
            _TIM_AspectTable_Names[44]="Ward"
            _TIM_AspectTable_Names[45]="Water"
            _TIM_AspectTable_Names[46]="Weaken"
            _TIM_AspectTable_Names[47]="Wind"

            _TIM_ModFilename_Apocalypse = "Apocalypse - Magic of Skyrim.esp"
            _TIM_ModFilename_Mysticism = "MysticismMagic.esp"
            _TIM_ModFilename_Transmundane = "Transmundane.esp"

            _TIM_ModFilename_Vanilla_Skyrim = "Skyrim.esm"
            _TIM_ModFilename_Vanilla_Dawnguard = "Dawnguard.esm"
            _TIM_ModFilename_Vanilla_Dragonborn = "Dragonbnorn.esm"
            
		Else
            ;Debug.Notification("_TIM: Initializing for the first time.")
            _TIM_SchoolTable_EarnedXP = new int[5]
            _TIM_AspectTable_EarnedXP = new int[48]
            _TIM_AspectTable_Currency = new int[48]

            _TIM_SchoolTable_Names = new string[5]
            _TIM_SchoolTable_Names[0] = "Alteration"
            _TIM_SchoolTable_Names[1] = "Conjuration"
            _TIM_SchoolTable_Names[2] = "Destruction"
            _TIM_SchoolTable_Names[3] = "Illusion"
            _TIM_SchoolTable_Names[4] = "Restoration"

            _TIM_AspectTable_Names  = new string[48]
            _TIM_AspectTable_Names[0]="Absorb"
            _TIM_AspectTable_Names[1]="Aggression"
            _TIM_AspectTable_Names[2]="Ash"
            _TIM_AspectTable_Names[3]="Automation"
            _TIM_AspectTable_Names[4]="Bind"
            _TIM_AspectTable_Names[5]="Blood"
            _TIM_AspectTable_Names[6]="Cloak"
            _TIM_AspectTable_Names[7]="Command"
            _TIM_AspectTable_Names[8]="Creature"
            _TIM_AspectTable_Names[9]="Death"
            _TIM_AspectTable_Names[10]="Disease"
            _TIM_AspectTable_Names[11]="Divine"
            _TIM_AspectTable_Names[12]="Dragon"
            _TIM_AspectTable_Names[13]="Earth"
            _TIM_AspectTable_Names[14]="Enhance"
            _TIM_AspectTable_Names[15]="Fabricate"
            _TIM_AspectTable_Names[16]="Fire"
            _TIM_AspectTable_Names[17]="Force"
            _TIM_AspectTable_Names[18]="Frost"
            _TIM_AspectTable_Names[19]="Gravity"
            _TIM_AspectTable_Names[20]="Health"
            _TIM_AspectTable_Names[21]="Influence"
            _TIM_AspectTable_Names[22]="Light"
            _TIM_AspectTable_Names[23]="Magic"
            _TIM_AspectTable_Names[24]="Magicka"
            _TIM_AspectTable_Names[25]="Melee"
            _TIM_AspectTable_Names[26]="Metamagic"
            _TIM_AspectTable_Names[27]="Mobility"
            _TIM_AspectTable_Names[28]="Morale"
            _TIM_AspectTable_Names[29]="Oblivion"
            _TIM_AspectTable_Names[30]="Perception"
            _TIM_AspectTable_Names[31]="Poison"
            _TIM_AspectTable_Names[32]="Protection"
            _TIM_AspectTable_Names[33]="Recovery"
            _TIM_AspectTable_Names[34]="Resistance"
            _TIM_AspectTable_Names[35]="Rune"
            _TIM_AspectTable_Names[36]="Shadow"
            _TIM_AspectTable_Names[37]="Shock"
            _TIM_AspectTable_Names[38]="Skill"
            _TIM_AspectTable_Names[39]="Soul"
            _TIM_AspectTable_Names[40]="Stamina"
            _TIM_AspectTable_Names[41]="Teleport"
            _TIM_AspectTable_Names[42]="Time"
            _TIM_AspectTable_Names[43]="Transmute"
            _TIM_AspectTable_Names[44]="Ward"
            _TIM_AspectTable_Names[45]="Water"
            _TIM_AspectTable_Names[46]="Weaken"
            _TIM_AspectTable_Names[47]="Wind"

            _TIM_ModFilename_Apocalypse = "Apocalypse - Magic of Skyrim.esp"
            _TIM_ModFilename_Mysticism = "MysticismMagic.esp"
            _TIM_ModFilename_Transmundane = "Transmundane.esp"

            _TIM_ModFilename_Vanilla_Skyrim = "Skyrim.esm"
            _TIM_ModFilename_Vanilla_Dawnguard = "Dawnguard.esm"
            _TIM_ModFilename_Vanilla_Dragonborn = "Dragonbnorn.esm"
            
		EndIf
		_TIM_Version = 0.50
    EndIf
    
    int modFormID = 0

    ; find Apocalypse - WB_AlterationMetamagic_MiscItem_Spellstone "Spellstone" [MISC:XX00BBB7]
    Form ApocalypseLoaded = Game.GetFormFromFile(0x0000BBB7, _TIM_ModFilename_Apocalypse)
    if ( ApocalypseLoaded )
        _TIM_Loaded_Apocalypse = 1
        modFormID = ApocalypseLoaded.GetFormID()
        if modFormID < 0
            _TIM_ModIndex_Apocalypse = (modFormID + 0x80000000) / 0x01000000 + 0x80
        else
            _TIM_ModIndex_Apocalypse = modFormID / 0x01000000
        endif      
        Debug.Notification("_TIM: ApocalypseLoaded: " + _TIM_ModIndex_Apocalypse)
    else
        _TIM_Loaded_Apocalypse = 0
        _TIM_ModIndex_Apocalypse = -1
    endif

    ; find Mysticism - OreSimonium "Simonium Ore" [MISC:XX4B067B]
    Form MysticismLoaded = Game.GetFormFromFile(0x004B067B, _TIM_ModFilename_Mysticism)
    if ( MysticismLoaded )
        _TIM_Loaded_Mysticism = 1
        modFormID = MysticismLoaded.GetFormID()
        if modFormID < 0
            _TIM_ModIndex_Mysticism = (modFormID + 0x80000000) / 0x01000000 + 0x80
        else
            _TIM_ModIndex_Mysticism = modFormID / 0x01000000
        endif        
        Debug.Notification("_TIM: MysticismLoaded: " + _TIM_ModIndex_Mysticism)
    else
        _TIM_Loaded_Mysticism = 0
        _TIM_ModIndex_Mysticism = -1
    endif

    ; find Transmundane - _TIM_Quest "Transmundane Data Manager" [QUST:XX00AA00]
    Form TransmundaneLoaded = Game.GetFormFromFile(0x0000AA00, _TIM_ModFilename_Transmundane)

    modFormID = TransmundaneLoaded.GetFormID()
    if modFormID < 0
        _TIM_ModIndex_Transmundane = (modFormID + 0x80000000) / 0x01000000 + 0x80
    else
        _TIM_ModIndex_Transmundane = modFormID / 0x01000000
    endif

    ;_TIM_ModIndex_Transmundane = getHighByteAsLowByte(TransmundaneLoaded.GetFormID())
    Debug.Notification("_TIM: TransmundaneLoaded: " + _TIM_ModIndex_Transmundane)

    _TIM_XPRate_Spells = _TIM_Global_XPRate_Spells.GetValue() as Int
    _TIM_XPRate_Workbooks = _TIM_Global_XPRate_Workbooks.GetValue() as Int
    RegisterForSingleUpdate(10.0)
endFunction

Event OnUpdate()
    _TIM_XPRate_Spells = _TIM_Global_XPRate_Spells.GetValue() as Int
    _TIM_XPRate_Workbooks = _TIM_Global_XPRate_Workbooks.GetValue() as Int
    RegisterForSingleUpdate(10.0)
EndEvent

Book Function findSpellWorkbookFromSpellTomeFormID(int SpellTomeFormID)
    Debug.Notification("_TIM: findSpellWorkbookFromSpellTomeFormID() " + SpellTomeFormID)

    int ModIndex   = 0 
    int TomeIndex = -1

    if (SpellTomeFormID < 0)
        ModIndex = (SpellTomeFormID + 0x80000000) / 0x01000000 + 0x80
    else
        ModIndex = SpellTomeFormID / 0x01000000
    endif 

    ; Apocalypse?
    if((ModIndex == _TIM_ModIndex_Apocalypse)  && (TomeIndex < 0))
        TomeIndex = _TIM_SpellTable_Apocalypse1_SpellTomeID.Find(SpellTomeFormID - (ModIndex * 0x01000000))
        if(TomeIndex >= 0)
            ;Debug.Notification("_TIM: found " + SpellTomeFormID)
            ;Debug.Notification("_TIM: returning " + _TIM_SpellTable_Apocalypse1_SpellWorkbookID[TomeIndex] + (_TIM_ModIndex_Apocalypse * 0x01000000))
            return Game.GetFormFromFile(_TIM_SpellTable_Apocalypse1_SpellWorkbookID[TomeIndex] + (_TIM_ModIndex_Apocalypse * 0x01000000) , "Apocalypse - Magic of Skyrim.esp") as Book
        endIf
        if (TomeIndex < 0)
            TomeIndex = _TIM_SpellTable_Apocalypse2_SpellTomeID.Find(SpellTomeFormID - (ModIndex * 0x01000000))
            if(TomeIndex >= 0)
                ;Debug.Notification("_TIM: found " + SpellTomeFormID)
                ;Debug.Notification("_TIM: returning " + _TIM_SpellTable_Apocalypse2_SpellWorkbookID[TomeIndex] + (_TIM_ModIndex_Apocalypse * 0x01000000))
                return Game.GetFormFromFile(_TIM_SpellTable_Apocalypse2_SpellWorkbookID[TomeIndex] + (_TIM_ModIndex_Apocalypse * 0x01000000) , "Apocalypse - Magic of Skyrim.esp") as Book
            endIf
        endIf
    endIf

    ; Mysticism?
    if((ModIndex == _TIM_ModIndex_Mysticism)  && (TomeIndex < 0))
        TomeIndex = _TIM_SpellTable_Mysticism_SpellTomeID.Find(SpellTomeFormID - (ModIndex * 0x01000000))
        if(TomeIndex >= 0)
            ;Debug.Notification("_TIM: found " + SpellTomeFormID)
            ;Debug.Notification("_TIM: returning " + _TIM_SpellTable_Mysticism_SpellWorkbookID[TomeIndex] + (_TIM_ModIndex_Mysticism * 0x01000000))
            return Game.GetFormFromFile(_TIM_SpellTable_Mysticism_SpellWorkbookID[TomeIndex] + (_TIM_ModIndex_Mysticism * 0x01000000) , "MysticismMagic.esp") as Book
        endIf
    endIf

    ; Vanilla?
    if((ModIndex == 0) || (ModIndex == 2) || (ModIndex == 4))
        TomeIndex = _TIM_SpellTable_Vanilla_SpellTomeID.Find(SpellTomeFormID)
        if(TomeIndex >= 0)
            ;Debug.Notification("_TIM: found " + SpellTomeFormID)
            ;Debug.Notification("_TIM: returning " + _TIM_SpellTable_Vanilla_SpellWorkbookID[TomeIndex] + (_TIM_ModIndex_Transmundane * 0x01000000))
            return Game.GetFormFromFile(_TIM_SpellTable_Vanilla_SpellWorkbookID[TomeIndex] + (_TIM_ModIndex_Transmundane * 0x01000000) , "Transmundane.esp") as Book
        endIf
    endIf
endFunction

function PlayerActivity(int Activity, int SpellFormID, int XP)
    ;Debug.Notification("_TIM: PlayerActivity(" + Activity + "," + SpellFormID + "," + XP + ")")
    ; Activity
    ; 0 = No Activity
    ; 1 = PlayerCastSpell
    ; 2 = PlayerReadSpellManual
    ; 3 = PlayerReadSpellWorkbook

    float startTime
    float endTime

    startTime = Utility.GetCurrentRealTime()

    int ModIndex = 0;
    int SpellIndex = -1
    int SpellTomeIndex  = -1
    int SchoolIndex = -1
    int Aspect0Index = -1
    int Aspect1Index = -1
    int Aspect2Index = -1
    int Aspect3Index = -1

    if (SpellFormID != 0)
        ; getHighByteAsLowByte
        if (SpellFormID < 0)
            ModIndex = (SpellFormID + 0x80000000) / 0x01000000 + 0x80
        else
            ModIndex = SpellFormID / 0x01000000
        endif
    endif
       
    ; gather the spell details

    ; Apocalypse?
    if((ModIndex == _TIM_ModIndex_Apocalypse) && (SpellIndex < 0))
        SpellIndex = _TIM_SpellTable_Apocalypse1_SpellFormID.Find(SpellFormID - (ModIndex * 0x01000000))

        if(SpellIndex >= 0)
            SchoolIndex = _TIM_SpellTable_Apocalypse1_SchoolIndex[SpellIndex]
            Aspect0Index = _TIM_SpellTable_Apocalypse1_Aspect1Index[SpellIndex]
            Aspect1Index = _TIM_SpellTable_Apocalypse1_Aspect2Index[SpellIndex]
            Aspect2Index = _TIM_SpellTable_Apocalypse1_Aspect3Index[SpellIndex]
            Aspect3Index = _TIM_SpellTable_Apocalypse1_Aspect4Index[SpellIndex]
        endIf

        if (SpellIndex < 0)
            SpellIndex = _TIM_SpellTable_Apocalypse2_SpellFormID.Find(SpellFormID - (ModIndex * 0x01000000))

            if(SpellIndex >= 0)
                SchoolIndex = _TIM_SpellTable_Apocalypse2_SchoolIndex[SpellIndex]
                Aspect0Index = _TIM_SpellTable_Apocalypse2_Aspect1Index[SpellIndex]
                Aspect1Index = _TIM_SpellTable_Apocalypse2_Aspect2Index[SpellIndex]
                Aspect2Index = _TIM_SpellTable_Apocalypse2_Aspect3Index[SpellIndex]
                Aspect3Index = _TIM_SpellTable_Apocalypse2_Aspect4Index[SpellIndex]
            endIf
        endIf
    endIf

    ; Mysticism?
    if((ModIndex == _TIM_ModIndex_Mysticism) && (SpellIndex < 0))
        SpellIndex = _TIM_SpellTable_Mysticism_SpellFormID.Find(SpellFormID - (ModIndex * 0x01000000))

        if(SpellIndex >= 0)
            SchoolIndex = _TIM_SpellTable_Mysticism_SchoolIndex[SpellIndex]
            Aspect0Index = _TIM_SpellTable_Mysticism_Aspect1Index[SpellIndex]
            Aspect1Index = _TIM_SpellTable_Mysticism_Aspect2Index[SpellIndex]
            Aspect2Index = _TIM_SpellTable_Mysticism_Aspect3Index[SpellIndex]
            Aspect3Index = _TIM_SpellTable_Mysticism_Aspect4Index[SpellIndex]
        endIf
    endIf

    ; Vanilla?
    if(((ModIndex == 0) || (ModIndex == 2) || (ModIndex == 4)) && (SpellIndex < 0))
        SpellIndex = _TIM_SpellTable_Vanilla_SpellFormID.Find(SpellFormID)

        if(SpellIndex >= 0)
            SchoolIndex = _TIM_SpellTable_Vanilla_SchoolIndex[SpellIndex];
            Aspect0Index = _TIM_SpellTable_Vanilla_Aspect1Index[SpellIndex];
            Aspect1Index = _TIM_SpellTable_Vanilla_Aspect2Index[SpellIndex];
            Aspect2Index = _TIM_SpellTable_Vanilla_Aspect3Index[SpellIndex];
            Aspect3Index = _TIM_SpellTable_Vanilla_Aspect4Index[SpellIndex];
        endIf
    endIf

    if(Activity == 1) ; PlayerCastSpell
        ; player cast a spell, so process oncast tracking updates

        ; add usage xp to spell school and spell aspects
        _TIM_SchoolTable_EarnedXP[SchoolIndex] = _TIM_SchoolTable_EarnedXP[SchoolIndex] + 1
        _TIM_AspectTable_EarnedXP[Aspect0Index] = _TIM_AspectTable_EarnedXP[Aspect0Index] + 1
        _TIM_AspectTable_EarnedXP[Aspect1Index] = _TIM_AspectTable_EarnedXP[Aspect1Index] + 1
        _TIM_AspectTable_EarnedXP[Aspect2Index] = _TIM_AspectTable_EarnedXP[Aspect2Index] + 1
        _TIM_AspectTable_EarnedXP[Aspect3Index] = _TIM_AspectTable_EarnedXP[Aspect3Index] + 1

        ; add usage currency in spell aspects
        _TIM_AspectTable_Currency[Aspect0Index] = _TIM_AspectTable_Currency[Aspect0Index] + 1
        _TIM_AspectTable_Currency[Aspect1Index] = _TIM_AspectTable_Currency[Aspect1Index] + 1
        _TIM_AspectTable_Currency[Aspect2Index] = _TIM_AspectTable_Currency[Aspect2Index] + 1
        _TIM_AspectTable_Currency[Aspect3Index] = _TIM_AspectTable_Currency[Aspect3Index] + 1
        
    endif  
    ; now we need to go find and update the spell in the various aspect tables, and possibly learn the spell.
    int AspectSearchIndex = 0

    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 00")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_00_SpellFormID, _TIM_AspectTable_Apocalypse_00_SpellXPEarned, _TIM_AspectTable_Apocalypse_00_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_00_SpellFormID, _TIM_AspectTable_Apocalypse_00_SpellXPEarned, _TIM_AspectTable_Apocalypse_00_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_00_SpellFormID, _TIM_AspectTable_Apocalypse_00_SpellXPEarned, _TIM_AspectTable_Apocalypse_00_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_00_SpellFormID, _TIM_AspectTable_Mysticism_00_SpellXPEarned, _TIM_AspectTable_Mysticism_00_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_00_SpellFormID, _TIM_AspectTable_Mysticism_00_SpellXPEarned, _TIM_AspectTable_Mysticism_00_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_00_SpellFormID, _TIM_AspectTable_Mysticism_00_SpellXPEarned, _TIM_AspectTable_Mysticism_00_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_00_SpellFormID, _TIM_AspectTable_Vanilla_00_SpellXPEarned, _TIM_AspectTable_Vanilla_00_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_00_SpellFormID, _TIM_AspectTable_Vanilla_00_SpellXPEarned, _TIM_AspectTable_Vanilla_00_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_00_SpellFormID, _TIM_AspectTable_Vanilla_00_SpellXPEarned, _TIM_AspectTable_Vanilla_00_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_00_SpellFormID, _TIM_AspectTable_Vanilla_00_SpellXPEarned, _TIM_AspectTable_Vanilla_00_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_00_SpellFormID, _TIM_AspectTable_Vanilla_00_SpellXPEarned, _TIM_AspectTable_Vanilla_00_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_00_SpellFormID, _TIM_AspectTable_Vanilla_00_SpellXPEarned, _TIM_AspectTable_Vanilla_00_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_00_SpellFormID, _TIM_AspectTable_Vanilla_00_SpellXPEarned, _TIM_AspectTable_Vanilla_00_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_00_SpellFormID, _TIM_AspectTable_Vanilla_00_SpellXPEarned, _TIM_AspectTable_Vanilla_00_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_00_SpellFormID, _TIM_AspectTable_Vanilla_00_SpellXPEarned, _TIM_AspectTable_Vanilla_00_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif


    AspectSearchIndex = 1
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 01")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_01_SpellFormID, _TIM_AspectTable_Apocalypse_01_SpellXPEarned, _TIM_AspectTable_Apocalypse_01_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_01_SpellFormID, _TIM_AspectTable_Apocalypse_01_SpellXPEarned, _TIM_AspectTable_Apocalypse_01_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_01_SpellFormID, _TIM_AspectTable_Apocalypse_01_SpellXPEarned, _TIM_AspectTable_Apocalypse_01_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_01_SpellFormID, _TIM_AspectTable_Mysticism_01_SpellXPEarned, _TIM_AspectTable_Mysticism_01_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_01_SpellFormID, _TIM_AspectTable_Mysticism_01_SpellXPEarned, _TIM_AspectTable_Mysticism_01_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_01_SpellFormID, _TIM_AspectTable_Mysticism_01_SpellXPEarned, _TIM_AspectTable_Mysticism_01_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_01_SpellFormID, _TIM_AspectTable_Vanilla_01_SpellXPEarned, _TIM_AspectTable_Vanilla_01_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_01_SpellFormID, _TIM_AspectTable_Vanilla_01_SpellXPEarned, _TIM_AspectTable_Vanilla_01_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_01_SpellFormID, _TIM_AspectTable_Vanilla_01_SpellXPEarned, _TIM_AspectTable_Vanilla_01_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_01_SpellFormID, _TIM_AspectTable_Vanilla_01_SpellXPEarned, _TIM_AspectTable_Vanilla_01_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_01_SpellFormID, _TIM_AspectTable_Vanilla_01_SpellXPEarned, _TIM_AspectTable_Vanilla_01_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_01_SpellFormID, _TIM_AspectTable_Vanilla_01_SpellXPEarned, _TIM_AspectTable_Vanilla_01_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_01_SpellFormID, _TIM_AspectTable_Vanilla_01_SpellXPEarned, _TIM_AspectTable_Vanilla_01_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_01_SpellFormID, _TIM_AspectTable_Vanilla_01_SpellXPEarned, _TIM_AspectTable_Vanilla_01_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_01_SpellFormID, _TIM_AspectTable_Vanilla_01_SpellXPEarned, _TIM_AspectTable_Vanilla_01_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 2
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 02")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_02_SpellFormID, _TIM_AspectTable_Apocalypse_02_SpellXPEarned, _TIM_AspectTable_Apocalypse_02_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_02_SpellFormID, _TIM_AspectTable_Apocalypse_02_SpellXPEarned, _TIM_AspectTable_Apocalypse_02_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_02_SpellFormID, _TIM_AspectTable_Apocalypse_02_SpellXPEarned, _TIM_AspectTable_Apocalypse_02_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_02_SpellFormID, _TIM_AspectTable_Mysticism_02_SpellXPEarned, _TIM_AspectTable_Mysticism_02_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_02_SpellFormID, _TIM_AspectTable_Mysticism_02_SpellXPEarned, _TIM_AspectTable_Mysticism_02_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_02_SpellFormID, _TIM_AspectTable_Mysticism_02_SpellXPEarned, _TIM_AspectTable_Mysticism_02_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_02_SpellFormID, _TIM_AspectTable_Vanilla_02_SpellXPEarned, _TIM_AspectTable_Vanilla_02_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_02_SpellFormID, _TIM_AspectTable_Vanilla_02_SpellXPEarned, _TIM_AspectTable_Vanilla_02_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_02_SpellFormID, _TIM_AspectTable_Vanilla_02_SpellXPEarned, _TIM_AspectTable_Vanilla_02_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_02_SpellFormID, _TIM_AspectTable_Vanilla_02_SpellXPEarned, _TIM_AspectTable_Vanilla_02_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_02_SpellFormID, _TIM_AspectTable_Vanilla_02_SpellXPEarned, _TIM_AspectTable_Vanilla_02_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_02_SpellFormID, _TIM_AspectTable_Vanilla_02_SpellXPEarned, _TIM_AspectTable_Vanilla_02_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_02_SpellFormID, _TIM_AspectTable_Vanilla_02_SpellXPEarned, _TIM_AspectTable_Vanilla_02_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_02_SpellFormID, _TIM_AspectTable_Vanilla_02_SpellXPEarned, _TIM_AspectTable_Vanilla_02_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_02_SpellFormID, _TIM_AspectTable_Vanilla_02_SpellXPEarned, _TIM_AspectTable_Vanilla_02_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 3
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 03")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_03_SpellFormID, _TIM_AspectTable_Apocalypse_03_SpellXPEarned, _TIM_AspectTable_Apocalypse_03_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_03_SpellFormID, _TIM_AspectTable_Apocalypse_03_SpellXPEarned, _TIM_AspectTable_Apocalypse_03_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_03_SpellFormID, _TIM_AspectTable_Apocalypse_03_SpellXPEarned, _TIM_AspectTable_Apocalypse_03_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_03_SpellFormID, _TIM_AspectTable_Mysticism_03_SpellXPEarned, _TIM_AspectTable_Mysticism_03_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_03_SpellFormID, _TIM_AspectTable_Mysticism_03_SpellXPEarned, _TIM_AspectTable_Mysticism_03_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_03_SpellFormID, _TIM_AspectTable_Mysticism_03_SpellXPEarned, _TIM_AspectTable_Mysticism_03_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_03_SpellFormID, _TIM_AspectTable_Vanilla_03_SpellXPEarned, _TIM_AspectTable_Vanilla_03_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_03_SpellFormID, _TIM_AspectTable_Vanilla_03_SpellXPEarned, _TIM_AspectTable_Vanilla_03_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_03_SpellFormID, _TIM_AspectTable_Vanilla_03_SpellXPEarned, _TIM_AspectTable_Vanilla_03_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_03_SpellFormID, _TIM_AspectTable_Vanilla_03_SpellXPEarned, _TIM_AspectTable_Vanilla_03_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_03_SpellFormID, _TIM_AspectTable_Vanilla_03_SpellXPEarned, _TIM_AspectTable_Vanilla_03_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_03_SpellFormID, _TIM_AspectTable_Vanilla_03_SpellXPEarned, _TIM_AspectTable_Vanilla_03_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_03_SpellFormID, _TIM_AspectTable_Vanilla_03_SpellXPEarned, _TIM_AspectTable_Vanilla_03_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_03_SpellFormID, _TIM_AspectTable_Vanilla_03_SpellXPEarned, _TIM_AspectTable_Vanilla_03_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_03_SpellFormID, _TIM_AspectTable_Vanilla_03_SpellXPEarned, _TIM_AspectTable_Vanilla_03_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 4
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 04")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_04_SpellFormID, _TIM_AspectTable_Apocalypse_04_SpellXPEarned, _TIM_AspectTable_Apocalypse_04_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_04_SpellFormID, _TIM_AspectTable_Apocalypse_04_SpellXPEarned, _TIM_AspectTable_Apocalypse_04_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_04_SpellFormID, _TIM_AspectTable_Apocalypse_04_SpellXPEarned, _TIM_AspectTable_Apocalypse_04_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_04_SpellFormID, _TIM_AspectTable_Mysticism_04_SpellXPEarned, _TIM_AspectTable_Mysticism_04_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_04_SpellFormID, _TIM_AspectTable_Mysticism_04_SpellXPEarned, _TIM_AspectTable_Mysticism_04_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_04_SpellFormID, _TIM_AspectTable_Mysticism_04_SpellXPEarned, _TIM_AspectTable_Mysticism_04_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_04_SpellFormID, _TIM_AspectTable_Vanilla_04_SpellXPEarned, _TIM_AspectTable_Vanilla_04_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_04_SpellFormID, _TIM_AspectTable_Vanilla_04_SpellXPEarned, _TIM_AspectTable_Vanilla_04_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_04_SpellFormID, _TIM_AspectTable_Vanilla_04_SpellXPEarned, _TIM_AspectTable_Vanilla_04_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_04_SpellFormID, _TIM_AspectTable_Vanilla_04_SpellXPEarned, _TIM_AspectTable_Vanilla_04_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_04_SpellFormID, _TIM_AspectTable_Vanilla_04_SpellXPEarned, _TIM_AspectTable_Vanilla_04_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_04_SpellFormID, _TIM_AspectTable_Vanilla_04_SpellXPEarned, _TIM_AspectTable_Vanilla_04_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_04_SpellFormID, _TIM_AspectTable_Vanilla_04_SpellXPEarned, _TIM_AspectTable_Vanilla_04_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_04_SpellFormID, _TIM_AspectTable_Vanilla_04_SpellXPEarned, _TIM_AspectTable_Vanilla_04_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_04_SpellFormID, _TIM_AspectTable_Vanilla_04_SpellXPEarned, _TIM_AspectTable_Vanilla_04_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 5
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 05")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_05_SpellFormID, _TIM_AspectTable_Apocalypse_05_SpellXPEarned, _TIM_AspectTable_Apocalypse_05_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_05_SpellFormID, _TIM_AspectTable_Apocalypse_05_SpellXPEarned, _TIM_AspectTable_Apocalypse_05_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_05_SpellFormID, _TIM_AspectTable_Apocalypse_05_SpellXPEarned, _TIM_AspectTable_Apocalypse_05_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_05_SpellFormID, _TIM_AspectTable_Mysticism_05_SpellXPEarned, _TIM_AspectTable_Mysticism_05_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_05_SpellFormID, _TIM_AspectTable_Mysticism_05_SpellXPEarned, _TIM_AspectTable_Mysticism_05_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_05_SpellFormID, _TIM_AspectTable_Mysticism_05_SpellXPEarned, _TIM_AspectTable_Mysticism_05_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_05_SpellFormID, _TIM_AspectTable_Vanilla_05_SpellXPEarned, _TIM_AspectTable_Vanilla_05_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_05_SpellFormID, _TIM_AspectTable_Vanilla_05_SpellXPEarned, _TIM_AspectTable_Vanilla_05_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_05_SpellFormID, _TIM_AspectTable_Vanilla_05_SpellXPEarned, _TIM_AspectTable_Vanilla_05_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_05_SpellFormID, _TIM_AspectTable_Vanilla_05_SpellXPEarned, _TIM_AspectTable_Vanilla_05_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_05_SpellFormID, _TIM_AspectTable_Vanilla_05_SpellXPEarned, _TIM_AspectTable_Vanilla_05_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_05_SpellFormID, _TIM_AspectTable_Vanilla_05_SpellXPEarned, _TIM_AspectTable_Vanilla_05_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_05_SpellFormID, _TIM_AspectTable_Vanilla_05_SpellXPEarned, _TIM_AspectTable_Vanilla_05_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_05_SpellFormID, _TIM_AspectTable_Vanilla_05_SpellXPEarned, _TIM_AspectTable_Vanilla_05_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_05_SpellFormID, _TIM_AspectTable_Vanilla_05_SpellXPEarned, _TIM_AspectTable_Vanilla_05_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 6
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 06")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_06_SpellFormID, _TIM_AspectTable_Apocalypse_06_SpellXPEarned, _TIM_AspectTable_Apocalypse_06_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_06_SpellFormID, _TIM_AspectTable_Apocalypse_06_SpellXPEarned, _TIM_AspectTable_Apocalypse_06_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_06_SpellFormID, _TIM_AspectTable_Apocalypse_06_SpellXPEarned, _TIM_AspectTable_Apocalypse_06_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_06_SpellFormID, _TIM_AspectTable_Mysticism_06_SpellXPEarned, _TIM_AspectTable_Mysticism_06_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_06_SpellFormID, _TIM_AspectTable_Mysticism_06_SpellXPEarned, _TIM_AspectTable_Mysticism_06_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_06_SpellFormID, _TIM_AspectTable_Mysticism_06_SpellXPEarned, _TIM_AspectTable_Mysticism_06_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_06_SpellFormID, _TIM_AspectTable_Vanilla_06_SpellXPEarned, _TIM_AspectTable_Vanilla_06_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_06_SpellFormID, _TIM_AspectTable_Vanilla_06_SpellXPEarned, _TIM_AspectTable_Vanilla_06_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_06_SpellFormID, _TIM_AspectTable_Vanilla_06_SpellXPEarned, _TIM_AspectTable_Vanilla_06_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_06_SpellFormID, _TIM_AspectTable_Vanilla_06_SpellXPEarned, _TIM_AspectTable_Vanilla_06_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_06_SpellFormID, _TIM_AspectTable_Vanilla_06_SpellXPEarned, _TIM_AspectTable_Vanilla_06_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_06_SpellFormID, _TIM_AspectTable_Vanilla_06_SpellXPEarned, _TIM_AspectTable_Vanilla_06_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_06_SpellFormID, _TIM_AspectTable_Vanilla_06_SpellXPEarned, _TIM_AspectTable_Vanilla_06_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_06_SpellFormID, _TIM_AspectTable_Vanilla_06_SpellXPEarned, _TIM_AspectTable_Vanilla_06_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_06_SpellFormID, _TIM_AspectTable_Vanilla_06_SpellXPEarned, _TIM_AspectTable_Vanilla_06_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 7
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 07")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_07_SpellFormID, _TIM_AspectTable_Apocalypse_07_SpellXPEarned, _TIM_AspectTable_Apocalypse_07_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_07_SpellFormID, _TIM_AspectTable_Apocalypse_07_SpellXPEarned, _TIM_AspectTable_Apocalypse_07_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_07_SpellFormID, _TIM_AspectTable_Apocalypse_07_SpellXPEarned, _TIM_AspectTable_Apocalypse_07_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_07_SpellFormID, _TIM_AspectTable_Mysticism_07_SpellXPEarned, _TIM_AspectTable_Mysticism_07_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_07_SpellFormID, _TIM_AspectTable_Mysticism_07_SpellXPEarned, _TIM_AspectTable_Mysticism_07_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_07_SpellFormID, _TIM_AspectTable_Mysticism_07_SpellXPEarned, _TIM_AspectTable_Mysticism_07_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_07_SpellFormID, _TIM_AspectTable_Vanilla_07_SpellXPEarned, _TIM_AspectTable_Vanilla_07_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_07_SpellFormID, _TIM_AspectTable_Vanilla_07_SpellXPEarned, _TIM_AspectTable_Vanilla_07_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_07_SpellFormID, _TIM_AspectTable_Vanilla_07_SpellXPEarned, _TIM_AspectTable_Vanilla_07_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_07_SpellFormID, _TIM_AspectTable_Vanilla_07_SpellXPEarned, _TIM_AspectTable_Vanilla_07_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_07_SpellFormID, _TIM_AspectTable_Vanilla_07_SpellXPEarned, _TIM_AspectTable_Vanilla_07_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_07_SpellFormID, _TIM_AspectTable_Vanilla_07_SpellXPEarned, _TIM_AspectTable_Vanilla_07_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_07_SpellFormID, _TIM_AspectTable_Vanilla_07_SpellXPEarned, _TIM_AspectTable_Vanilla_07_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_07_SpellFormID, _TIM_AspectTable_Vanilla_07_SpellXPEarned, _TIM_AspectTable_Vanilla_07_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_07_SpellFormID, _TIM_AspectTable_Vanilla_07_SpellXPEarned, _TIM_AspectTable_Vanilla_07_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 8
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
       ; Debug.Notification("_TIM: Aspect == 08")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_08_SpellFormID, _TIM_AspectTable_Apocalypse_08_SpellXPEarned, _TIM_AspectTable_Apocalypse_08_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_08_SpellFormID, _TIM_AspectTable_Apocalypse_08_SpellXPEarned, _TIM_AspectTable_Apocalypse_08_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_08_SpellFormID, _TIM_AspectTable_Apocalypse_08_SpellXPEarned, _TIM_AspectTable_Apocalypse_08_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_08_SpellFormID, _TIM_AspectTable_Mysticism_08_SpellXPEarned, _TIM_AspectTable_Mysticism_08_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_08_SpellFormID, _TIM_AspectTable_Mysticism_08_SpellXPEarned, _TIM_AspectTable_Mysticism_08_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_08_SpellFormID, _TIM_AspectTable_Mysticism_08_SpellXPEarned, _TIM_AspectTable_Mysticism_08_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_08_SpellFormID, _TIM_AspectTable_Vanilla_08_SpellXPEarned, _TIM_AspectTable_Vanilla_08_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_08_SpellFormID, _TIM_AspectTable_Vanilla_08_SpellXPEarned, _TIM_AspectTable_Vanilla_08_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_08_SpellFormID, _TIM_AspectTable_Vanilla_08_SpellXPEarned, _TIM_AspectTable_Vanilla_08_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_08_SpellFormID, _TIM_AspectTable_Vanilla_08_SpellXPEarned, _TIM_AspectTable_Vanilla_08_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_08_SpellFormID, _TIM_AspectTable_Vanilla_08_SpellXPEarned, _TIM_AspectTable_Vanilla_08_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_08_SpellFormID, _TIM_AspectTable_Vanilla_08_SpellXPEarned, _TIM_AspectTable_Vanilla_08_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_08_SpellFormID, _TIM_AspectTable_Vanilla_08_SpellXPEarned, _TIM_AspectTable_Vanilla_08_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_08_SpellFormID, _TIM_AspectTable_Vanilla_08_SpellXPEarned, _TIM_AspectTable_Vanilla_08_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_08_SpellFormID, _TIM_AspectTable_Vanilla_08_SpellXPEarned, _TIM_AspectTable_Vanilla_08_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 9
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;lDebug.Notification("_TIM: Aspect == 09")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_09_SpellFormID, _TIM_AspectTable_Apocalypse_09_SpellXPEarned, _TIM_AspectTable_Apocalypse_09_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_09_SpellFormID, _TIM_AspectTable_Apocalypse_09_SpellXPEarned, _TIM_AspectTable_Apocalypse_09_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_09_SpellFormID, _TIM_AspectTable_Apocalypse_09_SpellXPEarned, _TIM_AspectTable_Apocalypse_09_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_09_SpellFormID, _TIM_AspectTable_Mysticism_09_SpellXPEarned, _TIM_AspectTable_Mysticism_09_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_09_SpellFormID, _TIM_AspectTable_Mysticism_09_SpellXPEarned, _TIM_AspectTable_Mysticism_09_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_09_SpellFormID, _TIM_AspectTable_Mysticism_09_SpellXPEarned, _TIM_AspectTable_Mysticism_09_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_09_SpellFormID, _TIM_AspectTable_Vanilla_09_SpellXPEarned, _TIM_AspectTable_Vanilla_09_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_09_SpellFormID, _TIM_AspectTable_Vanilla_09_SpellXPEarned, _TIM_AspectTable_Vanilla_09_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_09_SpellFormID, _TIM_AspectTable_Vanilla_09_SpellXPEarned, _TIM_AspectTable_Vanilla_09_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_09_SpellFormID, _TIM_AspectTable_Vanilla_09_SpellXPEarned, _TIM_AspectTable_Vanilla_09_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_09_SpellFormID, _TIM_AspectTable_Vanilla_09_SpellXPEarned, _TIM_AspectTable_Vanilla_09_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_09_SpellFormID, _TIM_AspectTable_Vanilla_09_SpellXPEarned, _TIM_AspectTable_Vanilla_09_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_09_SpellFormID, _TIM_AspectTable_Vanilla_09_SpellXPEarned, _TIM_AspectTable_Vanilla_09_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_09_SpellFormID, _TIM_AspectTable_Vanilla_09_SpellXPEarned, _TIM_AspectTable_Vanilla_09_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_09_SpellFormID, _TIM_AspectTable_Vanilla_09_SpellXPEarned, _TIM_AspectTable_Vanilla_09_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 10
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 10")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_10_SpellFormID, _TIM_AspectTable_Apocalypse_10_SpellXPEarned, _TIM_AspectTable_Apocalypse_10_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_10_SpellFormID, _TIM_AspectTable_Apocalypse_10_SpellXPEarned, _TIM_AspectTable_Apocalypse_10_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_10_SpellFormID, _TIM_AspectTable_Apocalypse_10_SpellXPEarned, _TIM_AspectTable_Apocalypse_10_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_10_SpellFormID, _TIM_AspectTable_Mysticism_10_SpellXPEarned, _TIM_AspectTable_Mysticism_10_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_10_SpellFormID, _TIM_AspectTable_Mysticism_10_SpellXPEarned, _TIM_AspectTable_Mysticism_10_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_10_SpellFormID, _TIM_AspectTable_Mysticism_10_SpellXPEarned, _TIM_AspectTable_Mysticism_10_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_10_SpellFormID, _TIM_AspectTable_Vanilla_10_SpellXPEarned, _TIM_AspectTable_Vanilla_10_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_10_SpellFormID, _TIM_AspectTable_Vanilla_10_SpellXPEarned, _TIM_AspectTable_Vanilla_10_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_10_SpellFormID, _TIM_AspectTable_Vanilla_10_SpellXPEarned, _TIM_AspectTable_Vanilla_10_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_10_SpellFormID, _TIM_AspectTable_Vanilla_10_SpellXPEarned, _TIM_AspectTable_Vanilla_10_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_10_SpellFormID, _TIM_AspectTable_Vanilla_10_SpellXPEarned, _TIM_AspectTable_Vanilla_10_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_10_SpellFormID, _TIM_AspectTable_Vanilla_10_SpellXPEarned, _TIM_AspectTable_Vanilla_10_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_10_SpellFormID, _TIM_AspectTable_Vanilla_10_SpellXPEarned, _TIM_AspectTable_Vanilla_10_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_10_SpellFormID, _TIM_AspectTable_Vanilla_10_SpellXPEarned, _TIM_AspectTable_Vanilla_10_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_10_SpellFormID, _TIM_AspectTable_Vanilla_10_SpellXPEarned, _TIM_AspectTable_Vanilla_10_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 11
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 11")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_11_SpellFormID, _TIM_AspectTable_Apocalypse_11_SpellXPEarned, _TIM_AspectTable_Apocalypse_11_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_11_SpellFormID, _TIM_AspectTable_Apocalypse_11_SpellXPEarned, _TIM_AspectTable_Apocalypse_11_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_11_SpellFormID, _TIM_AspectTable_Apocalypse_11_SpellXPEarned, _TIM_AspectTable_Apocalypse_11_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_11_SpellFormID, _TIM_AspectTable_Mysticism_11_SpellXPEarned, _TIM_AspectTable_Mysticism_11_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_11_SpellFormID, _TIM_AspectTable_Mysticism_11_SpellXPEarned, _TIM_AspectTable_Mysticism_11_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_11_SpellFormID, _TIM_AspectTable_Mysticism_11_SpellXPEarned, _TIM_AspectTable_Mysticism_11_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_11_SpellFormID, _TIM_AspectTable_Vanilla_11_SpellXPEarned, _TIM_AspectTable_Vanilla_11_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_11_SpellFormID, _TIM_AspectTable_Vanilla_11_SpellXPEarned, _TIM_AspectTable_Vanilla_11_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_11_SpellFormID, _TIM_AspectTable_Vanilla_11_SpellXPEarned, _TIM_AspectTable_Vanilla_11_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_11_SpellFormID, _TIM_AspectTable_Vanilla_11_SpellXPEarned, _TIM_AspectTable_Vanilla_11_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_11_SpellFormID, _TIM_AspectTable_Vanilla_11_SpellXPEarned, _TIM_AspectTable_Vanilla_11_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_11_SpellFormID, _TIM_AspectTable_Vanilla_11_SpellXPEarned, _TIM_AspectTable_Vanilla_11_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_11_SpellFormID, _TIM_AspectTable_Vanilla_11_SpellXPEarned, _TIM_AspectTable_Vanilla_11_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_11_SpellFormID, _TIM_AspectTable_Vanilla_11_SpellXPEarned, _TIM_AspectTable_Vanilla_11_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_11_SpellFormID, _TIM_AspectTable_Vanilla_11_SpellXPEarned, _TIM_AspectTable_Vanilla_11_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 12
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 12")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_12_SpellFormID, _TIM_AspectTable_Apocalypse_12_SpellXPEarned, _TIM_AspectTable_Apocalypse_12_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_12_SpellFormID, _TIM_AspectTable_Apocalypse_12_SpellXPEarned, _TIM_AspectTable_Apocalypse_12_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_12_SpellFormID, _TIM_AspectTable_Apocalypse_12_SpellXPEarned, _TIM_AspectTable_Apocalypse_12_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_12_SpellFormID, _TIM_AspectTable_Mysticism_12_SpellXPEarned, _TIM_AspectTable_Mysticism_12_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_12_SpellFormID, _TIM_AspectTable_Mysticism_12_SpellXPEarned, _TIM_AspectTable_Mysticism_12_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_12_SpellFormID, _TIM_AspectTable_Mysticism_12_SpellXPEarned, _TIM_AspectTable_Mysticism_12_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_12_SpellFormID, _TIM_AspectTable_Vanilla_12_SpellXPEarned, _TIM_AspectTable_Vanilla_12_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_12_SpellFormID, _TIM_AspectTable_Vanilla_12_SpellXPEarned, _TIM_AspectTable_Vanilla_12_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_12_SpellFormID, _TIM_AspectTable_Vanilla_12_SpellXPEarned, _TIM_AspectTable_Vanilla_12_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_12_SpellFormID, _TIM_AspectTable_Vanilla_12_SpellXPEarned, _TIM_AspectTable_Vanilla_12_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_12_SpellFormID, _TIM_AspectTable_Vanilla_12_SpellXPEarned, _TIM_AspectTable_Vanilla_12_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_12_SpellFormID, _TIM_AspectTable_Vanilla_12_SpellXPEarned, _TIM_AspectTable_Vanilla_12_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_12_SpellFormID, _TIM_AspectTable_Vanilla_12_SpellXPEarned, _TIM_AspectTable_Vanilla_12_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_12_SpellFormID, _TIM_AspectTable_Vanilla_12_SpellXPEarned, _TIM_AspectTable_Vanilla_12_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_12_SpellFormID, _TIM_AspectTable_Vanilla_12_SpellXPEarned, _TIM_AspectTable_Vanilla_12_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 13
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 13")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_13_SpellFormID, _TIM_AspectTable_Apocalypse_13_SpellXPEarned, _TIM_AspectTable_Apocalypse_13_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_13_SpellFormID, _TIM_AspectTable_Apocalypse_13_SpellXPEarned, _TIM_AspectTable_Apocalypse_13_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_13_SpellFormID, _TIM_AspectTable_Apocalypse_13_SpellXPEarned, _TIM_AspectTable_Apocalypse_13_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_13_SpellFormID, _TIM_AspectTable_Mysticism_13_SpellXPEarned, _TIM_AspectTable_Mysticism_13_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_13_SpellFormID, _TIM_AspectTable_Mysticism_13_SpellXPEarned, _TIM_AspectTable_Mysticism_13_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_13_SpellFormID, _TIM_AspectTable_Mysticism_13_SpellXPEarned, _TIM_AspectTable_Mysticism_13_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_13_SpellFormID, _TIM_AspectTable_Vanilla_13_SpellXPEarned, _TIM_AspectTable_Vanilla_13_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_13_SpellFormID, _TIM_AspectTable_Vanilla_13_SpellXPEarned, _TIM_AspectTable_Vanilla_13_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_13_SpellFormID, _TIM_AspectTable_Vanilla_13_SpellXPEarned, _TIM_AspectTable_Vanilla_13_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_13_SpellFormID, _TIM_AspectTable_Vanilla_13_SpellXPEarned, _TIM_AspectTable_Vanilla_13_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_13_SpellFormID, _TIM_AspectTable_Vanilla_13_SpellXPEarned, _TIM_AspectTable_Vanilla_13_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_13_SpellFormID, _TIM_AspectTable_Vanilla_13_SpellXPEarned, _TIM_AspectTable_Vanilla_13_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_13_SpellFormID, _TIM_AspectTable_Vanilla_13_SpellXPEarned, _TIM_AspectTable_Vanilla_13_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_13_SpellFormID, _TIM_AspectTable_Vanilla_13_SpellXPEarned, _TIM_AspectTable_Vanilla_13_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_13_SpellFormID, _TIM_AspectTable_Vanilla_13_SpellXPEarned, _TIM_AspectTable_Vanilla_13_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 14
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 14")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_14_SpellFormID, _TIM_AspectTable_Apocalypse_14_SpellXPEarned, _TIM_AspectTable_Apocalypse_14_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_14_SpellFormID, _TIM_AspectTable_Apocalypse_14_SpellXPEarned, _TIM_AspectTable_Apocalypse_14_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_14_SpellFormID, _TIM_AspectTable_Apocalypse_14_SpellXPEarned, _TIM_AspectTable_Apocalypse_14_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_14_SpellFormID, _TIM_AspectTable_Mysticism_14_SpellXPEarned, _TIM_AspectTable_Mysticism_14_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_14_SpellFormID, _TIM_AspectTable_Mysticism_14_SpellXPEarned, _TIM_AspectTable_Mysticism_14_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_14_SpellFormID, _TIM_AspectTable_Mysticism_14_SpellXPEarned, _TIM_AspectTable_Mysticism_14_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_14_SpellFormID, _TIM_AspectTable_Vanilla_14_SpellXPEarned, _TIM_AspectTable_Vanilla_14_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_14_SpellFormID, _TIM_AspectTable_Vanilla_14_SpellXPEarned, _TIM_AspectTable_Vanilla_14_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_14_SpellFormID, _TIM_AspectTable_Vanilla_14_SpellXPEarned, _TIM_AspectTable_Vanilla_14_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_14_SpellFormID, _TIM_AspectTable_Vanilla_14_SpellXPEarned, _TIM_AspectTable_Vanilla_14_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_14_SpellFormID, _TIM_AspectTable_Vanilla_14_SpellXPEarned, _TIM_AspectTable_Vanilla_14_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_14_SpellFormID, _TIM_AspectTable_Vanilla_14_SpellXPEarned, _TIM_AspectTable_Vanilla_14_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_14_SpellFormID, _TIM_AspectTable_Vanilla_14_SpellXPEarned, _TIM_AspectTable_Vanilla_14_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_14_SpellFormID, _TIM_AspectTable_Vanilla_14_SpellXPEarned, _TIM_AspectTable_Vanilla_14_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_14_SpellFormID, _TIM_AspectTable_Vanilla_14_SpellXPEarned, _TIM_AspectTable_Vanilla_14_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 15
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 15")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_15_SpellFormID, _TIM_AspectTable_Apocalypse_15_SpellXPEarned, _TIM_AspectTable_Apocalypse_15_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_15_SpellFormID, _TIM_AspectTable_Apocalypse_15_SpellXPEarned, _TIM_AspectTable_Apocalypse_15_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_15_SpellFormID, _TIM_AspectTable_Apocalypse_15_SpellXPEarned, _TIM_AspectTable_Apocalypse_15_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_15_SpellFormID, _TIM_AspectTable_Mysticism_15_SpellXPEarned, _TIM_AspectTable_Mysticism_15_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_15_SpellFormID, _TIM_AspectTable_Mysticism_15_SpellXPEarned, _TIM_AspectTable_Mysticism_15_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_15_SpellFormID, _TIM_AspectTable_Mysticism_15_SpellXPEarned, _TIM_AspectTable_Mysticism_15_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_15_SpellFormID, _TIM_AspectTable_Vanilla_15_SpellXPEarned, _TIM_AspectTable_Vanilla_15_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_15_SpellFormID, _TIM_AspectTable_Vanilla_15_SpellXPEarned, _TIM_AspectTable_Vanilla_15_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_15_SpellFormID, _TIM_AspectTable_Vanilla_15_SpellXPEarned, _TIM_AspectTable_Vanilla_15_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_15_SpellFormID, _TIM_AspectTable_Vanilla_15_SpellXPEarned, _TIM_AspectTable_Vanilla_15_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_15_SpellFormID, _TIM_AspectTable_Vanilla_15_SpellXPEarned, _TIM_AspectTable_Vanilla_15_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_15_SpellFormID, _TIM_AspectTable_Vanilla_15_SpellXPEarned, _TIM_AspectTable_Vanilla_15_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_15_SpellFormID, _TIM_AspectTable_Vanilla_15_SpellXPEarned, _TIM_AspectTable_Vanilla_15_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_15_SpellFormID, _TIM_AspectTable_Vanilla_15_SpellXPEarned, _TIM_AspectTable_Vanilla_15_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_15_SpellFormID, _TIM_AspectTable_Vanilla_15_SpellXPEarned, _TIM_AspectTable_Vanilla_15_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 16
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 16")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_16_SpellFormID, _TIM_AspectTable_Apocalypse_16_SpellXPEarned, _TIM_AspectTable_Apocalypse_16_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_16_SpellFormID, _TIM_AspectTable_Apocalypse_16_SpellXPEarned, _TIM_AspectTable_Apocalypse_16_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_16_SpellFormID, _TIM_AspectTable_Apocalypse_16_SpellXPEarned, _TIM_AspectTable_Apocalypse_16_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_16_SpellFormID, _TIM_AspectTable_Mysticism_16_SpellXPEarned, _TIM_AspectTable_Mysticism_16_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_16_SpellFormID, _TIM_AspectTable_Mysticism_16_SpellXPEarned, _TIM_AspectTable_Mysticism_16_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_16_SpellFormID, _TIM_AspectTable_Mysticism_16_SpellXPEarned, _TIM_AspectTable_Mysticism_16_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_16_SpellFormID, _TIM_AspectTable_Vanilla_16_SpellXPEarned, _TIM_AspectTable_Vanilla_16_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_16_SpellFormID, _TIM_AspectTable_Vanilla_16_SpellXPEarned, _TIM_AspectTable_Vanilla_16_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_16_SpellFormID, _TIM_AspectTable_Vanilla_16_SpellXPEarned, _TIM_AspectTable_Vanilla_16_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_16_SpellFormID, _TIM_AspectTable_Vanilla_16_SpellXPEarned, _TIM_AspectTable_Vanilla_16_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_16_SpellFormID, _TIM_AspectTable_Vanilla_16_SpellXPEarned, _TIM_AspectTable_Vanilla_16_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_16_SpellFormID, _TIM_AspectTable_Vanilla_16_SpellXPEarned, _TIM_AspectTable_Vanilla_16_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_16_SpellFormID, _TIM_AspectTable_Vanilla_16_SpellXPEarned, _TIM_AspectTable_Vanilla_16_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_16_SpellFormID, _TIM_AspectTable_Vanilla_16_SpellXPEarned, _TIM_AspectTable_Vanilla_16_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_16_SpellFormID, _TIM_AspectTable_Vanilla_16_SpellXPEarned, _TIM_AspectTable_Vanilla_16_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 17
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 17")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_17_SpellFormID, _TIM_AspectTable_Apocalypse_17_SpellXPEarned, _TIM_AspectTable_Apocalypse_17_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_17_SpellFormID, _TIM_AspectTable_Apocalypse_17_SpellXPEarned, _TIM_AspectTable_Apocalypse_17_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_17_SpellFormID, _TIM_AspectTable_Apocalypse_17_SpellXPEarned, _TIM_AspectTable_Apocalypse_17_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_17_SpellFormID, _TIM_AspectTable_Mysticism_17_SpellXPEarned, _TIM_AspectTable_Mysticism_17_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_17_SpellFormID, _TIM_AspectTable_Mysticism_17_SpellXPEarned, _TIM_AspectTable_Mysticism_17_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_17_SpellFormID, _TIM_AspectTable_Mysticism_17_SpellXPEarned, _TIM_AspectTable_Mysticism_17_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_17_SpellFormID, _TIM_AspectTable_Vanilla_17_SpellXPEarned, _TIM_AspectTable_Vanilla_17_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_17_SpellFormID, _TIM_AspectTable_Vanilla_17_SpellXPEarned, _TIM_AspectTable_Vanilla_17_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_17_SpellFormID, _TIM_AspectTable_Vanilla_17_SpellXPEarned, _TIM_AspectTable_Vanilla_17_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_17_SpellFormID, _TIM_AspectTable_Vanilla_17_SpellXPEarned, _TIM_AspectTable_Vanilla_17_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_17_SpellFormID, _TIM_AspectTable_Vanilla_17_SpellXPEarned, _TIM_AspectTable_Vanilla_17_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_17_SpellFormID, _TIM_AspectTable_Vanilla_17_SpellXPEarned, _TIM_AspectTable_Vanilla_17_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_17_SpellFormID, _TIM_AspectTable_Vanilla_17_SpellXPEarned, _TIM_AspectTable_Vanilla_17_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_17_SpellFormID, _TIM_AspectTable_Vanilla_17_SpellXPEarned, _TIM_AspectTable_Vanilla_17_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_17_SpellFormID, _TIM_AspectTable_Vanilla_17_SpellXPEarned, _TIM_AspectTable_Vanilla_17_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 18
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 18")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_18_SpellFormID, _TIM_AspectTable_Apocalypse_18_SpellXPEarned, _TIM_AspectTable_Apocalypse_18_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_18_SpellFormID, _TIM_AspectTable_Apocalypse_18_SpellXPEarned, _TIM_AspectTable_Apocalypse_18_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_18_SpellFormID, _TIM_AspectTable_Apocalypse_18_SpellXPEarned, _TIM_AspectTable_Apocalypse_18_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_18_SpellFormID, _TIM_AspectTable_Mysticism_18_SpellXPEarned, _TIM_AspectTable_Mysticism_18_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_18_SpellFormID, _TIM_AspectTable_Mysticism_18_SpellXPEarned, _TIM_AspectTable_Mysticism_18_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_18_SpellFormID, _TIM_AspectTable_Mysticism_18_SpellXPEarned, _TIM_AspectTable_Mysticism_18_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_18_SpellFormID, _TIM_AspectTable_Vanilla_18_SpellXPEarned, _TIM_AspectTable_Vanilla_18_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_18_SpellFormID, _TIM_AspectTable_Vanilla_18_SpellXPEarned, _TIM_AspectTable_Vanilla_18_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_18_SpellFormID, _TIM_AspectTable_Vanilla_18_SpellXPEarned, _TIM_AspectTable_Vanilla_18_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_18_SpellFormID, _TIM_AspectTable_Vanilla_18_SpellXPEarned, _TIM_AspectTable_Vanilla_18_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_18_SpellFormID, _TIM_AspectTable_Vanilla_18_SpellXPEarned, _TIM_AspectTable_Vanilla_18_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_18_SpellFormID, _TIM_AspectTable_Vanilla_18_SpellXPEarned, _TIM_AspectTable_Vanilla_18_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_18_SpellFormID, _TIM_AspectTable_Vanilla_18_SpellXPEarned, _TIM_AspectTable_Vanilla_18_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_18_SpellFormID, _TIM_AspectTable_Vanilla_18_SpellXPEarned, _TIM_AspectTable_Vanilla_18_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_18_SpellFormID, _TIM_AspectTable_Vanilla_18_SpellXPEarned, _TIM_AspectTable_Vanilla_18_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 19
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 19")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_19_SpellFormID, _TIM_AspectTable_Apocalypse_19_SpellXPEarned, _TIM_AspectTable_Apocalypse_19_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_19_SpellFormID, _TIM_AspectTable_Apocalypse_19_SpellXPEarned, _TIM_AspectTable_Apocalypse_19_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_19_SpellFormID, _TIM_AspectTable_Apocalypse_19_SpellXPEarned, _TIM_AspectTable_Apocalypse_19_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_19_SpellFormID, _TIM_AspectTable_Mysticism_19_SpellXPEarned, _TIM_AspectTable_Mysticism_19_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_19_SpellFormID, _TIM_AspectTable_Mysticism_19_SpellXPEarned, _TIM_AspectTable_Mysticism_19_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_19_SpellFormID, _TIM_AspectTable_Mysticism_19_SpellXPEarned, _TIM_AspectTable_Mysticism_19_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_19_SpellFormID, _TIM_AspectTable_Vanilla_19_SpellXPEarned, _TIM_AspectTable_Vanilla_19_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_19_SpellFormID, _TIM_AspectTable_Vanilla_19_SpellXPEarned, _TIM_AspectTable_Vanilla_19_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_19_SpellFormID, _TIM_AspectTable_Vanilla_19_SpellXPEarned, _TIM_AspectTable_Vanilla_19_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_19_SpellFormID, _TIM_AspectTable_Vanilla_19_SpellXPEarned, _TIM_AspectTable_Vanilla_19_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_19_SpellFormID, _TIM_AspectTable_Vanilla_19_SpellXPEarned, _TIM_AspectTable_Vanilla_19_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_19_SpellFormID, _TIM_AspectTable_Vanilla_19_SpellXPEarned, _TIM_AspectTable_Vanilla_19_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_19_SpellFormID, _TIM_AspectTable_Vanilla_19_SpellXPEarned, _TIM_AspectTable_Vanilla_19_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_19_SpellFormID, _TIM_AspectTable_Vanilla_19_SpellXPEarned, _TIM_AspectTable_Vanilla_19_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_19_SpellFormID, _TIM_AspectTable_Vanilla_19_SpellXPEarned, _TIM_AspectTable_Vanilla_19_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 20
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 20")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_20_SpellFormID, _TIM_AspectTable_Apocalypse_20_SpellXPEarned, _TIM_AspectTable_Apocalypse_20_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_20_SpellFormID, _TIM_AspectTable_Apocalypse_20_SpellXPEarned, _TIM_AspectTable_Apocalypse_20_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_20_SpellFormID, _TIM_AspectTable_Apocalypse_20_SpellXPEarned, _TIM_AspectTable_Apocalypse_20_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_20_SpellFormID, _TIM_AspectTable_Mysticism_20_SpellXPEarned, _TIM_AspectTable_Mysticism_20_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_20_SpellFormID, _TIM_AspectTable_Mysticism_20_SpellXPEarned, _TIM_AspectTable_Mysticism_20_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_20_SpellFormID, _TIM_AspectTable_Mysticism_20_SpellXPEarned, _TIM_AspectTable_Mysticism_20_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_20_SpellFormID, _TIM_AspectTable_Vanilla_20_SpellXPEarned, _TIM_AspectTable_Vanilla_20_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_20_SpellFormID, _TIM_AspectTable_Vanilla_20_SpellXPEarned, _TIM_AspectTable_Vanilla_20_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_20_SpellFormID, _TIM_AspectTable_Vanilla_20_SpellXPEarned, _TIM_AspectTable_Vanilla_20_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_20_SpellFormID, _TIM_AspectTable_Vanilla_20_SpellXPEarned, _TIM_AspectTable_Vanilla_20_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_20_SpellFormID, _TIM_AspectTable_Vanilla_20_SpellXPEarned, _TIM_AspectTable_Vanilla_20_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_20_SpellFormID, _TIM_AspectTable_Vanilla_20_SpellXPEarned, _TIM_AspectTable_Vanilla_20_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_20_SpellFormID, _TIM_AspectTable_Vanilla_20_SpellXPEarned, _TIM_AspectTable_Vanilla_20_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_20_SpellFormID, _TIM_AspectTable_Vanilla_20_SpellXPEarned, _TIM_AspectTable_Vanilla_20_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_20_SpellFormID, _TIM_AspectTable_Vanilla_20_SpellXPEarned, _TIM_AspectTable_Vanilla_20_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 21
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 21")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_21_SpellFormID, _TIM_AspectTable_Apocalypse_21_SpellXPEarned, _TIM_AspectTable_Apocalypse_21_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_21_SpellFormID, _TIM_AspectTable_Apocalypse_21_SpellXPEarned, _TIM_AspectTable_Apocalypse_21_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_21_SpellFormID, _TIM_AspectTable_Apocalypse_21_SpellXPEarned, _TIM_AspectTable_Apocalypse_21_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_21_SpellFormID, _TIM_AspectTable_Mysticism_21_SpellXPEarned, _TIM_AspectTable_Mysticism_21_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_21_SpellFormID, _TIM_AspectTable_Mysticism_21_SpellXPEarned, _TIM_AspectTable_Mysticism_21_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_21_SpellFormID, _TIM_AspectTable_Mysticism_21_SpellXPEarned, _TIM_AspectTable_Mysticism_21_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_21_SpellFormID, _TIM_AspectTable_Vanilla_21_SpellXPEarned, _TIM_AspectTable_Vanilla_21_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_21_SpellFormID, _TIM_AspectTable_Vanilla_21_SpellXPEarned, _TIM_AspectTable_Vanilla_21_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_21_SpellFormID, _TIM_AspectTable_Vanilla_21_SpellXPEarned, _TIM_AspectTable_Vanilla_21_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_21_SpellFormID, _TIM_AspectTable_Vanilla_21_SpellXPEarned, _TIM_AspectTable_Vanilla_21_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_21_SpellFormID, _TIM_AspectTable_Vanilla_21_SpellXPEarned, _TIM_AspectTable_Vanilla_21_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_21_SpellFormID, _TIM_AspectTable_Vanilla_21_SpellXPEarned, _TIM_AspectTable_Vanilla_21_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_21_SpellFormID, _TIM_AspectTable_Vanilla_21_SpellXPEarned, _TIM_AspectTable_Vanilla_21_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_21_SpellFormID, _TIM_AspectTable_Vanilla_21_SpellXPEarned, _TIM_AspectTable_Vanilla_21_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_21_SpellFormID, _TIM_AspectTable_Vanilla_21_SpellXPEarned, _TIM_AspectTable_Vanilla_21_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 22
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 22")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_22_SpellFormID, _TIM_AspectTable_Apocalypse_22_SpellXPEarned, _TIM_AspectTable_Apocalypse_22_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_22_SpellFormID, _TIM_AspectTable_Apocalypse_22_SpellXPEarned, _TIM_AspectTable_Apocalypse_22_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_22_SpellFormID, _TIM_AspectTable_Apocalypse_22_SpellXPEarned, _TIM_AspectTable_Apocalypse_22_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_22_SpellFormID, _TIM_AspectTable_Mysticism_22_SpellXPEarned, _TIM_AspectTable_Mysticism_22_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_22_SpellFormID, _TIM_AspectTable_Mysticism_22_SpellXPEarned, _TIM_AspectTable_Mysticism_22_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_22_SpellFormID, _TIM_AspectTable_Mysticism_22_SpellXPEarned, _TIM_AspectTable_Mysticism_22_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_22_SpellFormID, _TIM_AspectTable_Vanilla_22_SpellXPEarned, _TIM_AspectTable_Vanilla_22_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_22_SpellFormID, _TIM_AspectTable_Vanilla_22_SpellXPEarned, _TIM_AspectTable_Vanilla_22_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_22_SpellFormID, _TIM_AspectTable_Vanilla_22_SpellXPEarned, _TIM_AspectTable_Vanilla_22_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_22_SpellFormID, _TIM_AspectTable_Vanilla_22_SpellXPEarned, _TIM_AspectTable_Vanilla_22_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_22_SpellFormID, _TIM_AspectTable_Vanilla_22_SpellXPEarned, _TIM_AspectTable_Vanilla_22_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_22_SpellFormID, _TIM_AspectTable_Vanilla_22_SpellXPEarned, _TIM_AspectTable_Vanilla_22_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_22_SpellFormID, _TIM_AspectTable_Vanilla_22_SpellXPEarned, _TIM_AspectTable_Vanilla_22_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_22_SpellFormID, _TIM_AspectTable_Vanilla_22_SpellXPEarned, _TIM_AspectTable_Vanilla_22_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_22_SpellFormID, _TIM_AspectTable_Vanilla_22_SpellXPEarned, _TIM_AspectTable_Vanilla_22_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 23
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 23")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_23_SpellFormID, _TIM_AspectTable_Apocalypse_23_SpellXPEarned, _TIM_AspectTable_Apocalypse_23_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_23_SpellFormID, _TIM_AspectTable_Apocalypse_23_SpellXPEarned, _TIM_AspectTable_Apocalypse_23_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_23_SpellFormID, _TIM_AspectTable_Apocalypse_23_SpellXPEarned, _TIM_AspectTable_Apocalypse_23_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_23_SpellFormID, _TIM_AspectTable_Mysticism_23_SpellXPEarned, _TIM_AspectTable_Mysticism_23_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_23_SpellFormID, _TIM_AspectTable_Mysticism_23_SpellXPEarned, _TIM_AspectTable_Mysticism_23_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_23_SpellFormID, _TIM_AspectTable_Mysticism_23_SpellXPEarned, _TIM_AspectTable_Mysticism_23_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_23_SpellFormID, _TIM_AspectTable_Vanilla_23_SpellXPEarned, _TIM_AspectTable_Vanilla_23_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_23_SpellFormID, _TIM_AspectTable_Vanilla_23_SpellXPEarned, _TIM_AspectTable_Vanilla_23_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_23_SpellFormID, _TIM_AspectTable_Vanilla_23_SpellXPEarned, _TIM_AspectTable_Vanilla_23_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_23_SpellFormID, _TIM_AspectTable_Vanilla_23_SpellXPEarned, _TIM_AspectTable_Vanilla_23_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_23_SpellFormID, _TIM_AspectTable_Vanilla_23_SpellXPEarned, _TIM_AspectTable_Vanilla_23_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_23_SpellFormID, _TIM_AspectTable_Vanilla_23_SpellXPEarned, _TIM_AspectTable_Vanilla_23_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_23_SpellFormID, _TIM_AspectTable_Vanilla_23_SpellXPEarned, _TIM_AspectTable_Vanilla_23_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_23_SpellFormID, _TIM_AspectTable_Vanilla_23_SpellXPEarned, _TIM_AspectTable_Vanilla_23_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_23_SpellFormID, _TIM_AspectTable_Vanilla_23_SpellXPEarned, _TIM_AspectTable_Vanilla_23_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 24
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 24")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_24_SpellFormID, _TIM_AspectTable_Apocalypse_24_SpellXPEarned, _TIM_AspectTable_Apocalypse_24_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_24_SpellFormID, _TIM_AspectTable_Apocalypse_24_SpellXPEarned, _TIM_AspectTable_Apocalypse_24_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_24_SpellFormID, _TIM_AspectTable_Apocalypse_24_SpellXPEarned, _TIM_AspectTable_Apocalypse_24_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_24_SpellFormID, _TIM_AspectTable_Mysticism_24_SpellXPEarned, _TIM_AspectTable_Mysticism_24_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_24_SpellFormID, _TIM_AspectTable_Mysticism_24_SpellXPEarned, _TIM_AspectTable_Mysticism_24_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_24_SpellFormID, _TIM_AspectTable_Mysticism_24_SpellXPEarned, _TIM_AspectTable_Mysticism_24_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_24_SpellFormID, _TIM_AspectTable_Vanilla_24_SpellXPEarned, _TIM_AspectTable_Vanilla_24_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_24_SpellFormID, _TIM_AspectTable_Vanilla_24_SpellXPEarned, _TIM_AspectTable_Vanilla_24_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_24_SpellFormID, _TIM_AspectTable_Vanilla_24_SpellXPEarned, _TIM_AspectTable_Vanilla_24_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_24_SpellFormID, _TIM_AspectTable_Vanilla_24_SpellXPEarned, _TIM_AspectTable_Vanilla_24_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_24_SpellFormID, _TIM_AspectTable_Vanilla_24_SpellXPEarned, _TIM_AspectTable_Vanilla_24_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_24_SpellFormID, _TIM_AspectTable_Vanilla_24_SpellXPEarned, _TIM_AspectTable_Vanilla_24_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_24_SpellFormID, _TIM_AspectTable_Vanilla_24_SpellXPEarned, _TIM_AspectTable_Vanilla_24_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_24_SpellFormID, _TIM_AspectTable_Vanilla_24_SpellXPEarned, _TIM_AspectTable_Vanilla_24_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_24_SpellFormID, _TIM_AspectTable_Vanilla_24_SpellXPEarned, _TIM_AspectTable_Vanilla_24_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 25
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 25")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_25_SpellFormID, _TIM_AspectTable_Apocalypse_25_SpellXPEarned, _TIM_AspectTable_Apocalypse_25_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_25_SpellFormID, _TIM_AspectTable_Apocalypse_25_SpellXPEarned, _TIM_AspectTable_Apocalypse_25_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_25_SpellFormID, _TIM_AspectTable_Apocalypse_25_SpellXPEarned, _TIM_AspectTable_Apocalypse_25_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_25_SpellFormID, _TIM_AspectTable_Mysticism_25_SpellXPEarned, _TIM_AspectTable_Mysticism_25_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_25_SpellFormID, _TIM_AspectTable_Mysticism_25_SpellXPEarned, _TIM_AspectTable_Mysticism_25_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_25_SpellFormID, _TIM_AspectTable_Mysticism_25_SpellXPEarned, _TIM_AspectTable_Mysticism_25_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_25_SpellFormID, _TIM_AspectTable_Vanilla_25_SpellXPEarned, _TIM_AspectTable_Vanilla_25_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_25_SpellFormID, _TIM_AspectTable_Vanilla_25_SpellXPEarned, _TIM_AspectTable_Vanilla_25_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_25_SpellFormID, _TIM_AspectTable_Vanilla_25_SpellXPEarned, _TIM_AspectTable_Vanilla_25_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_25_SpellFormID, _TIM_AspectTable_Vanilla_25_SpellXPEarned, _TIM_AspectTable_Vanilla_25_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_25_SpellFormID, _TIM_AspectTable_Vanilla_25_SpellXPEarned, _TIM_AspectTable_Vanilla_25_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_25_SpellFormID, _TIM_AspectTable_Vanilla_25_SpellXPEarned, _TIM_AspectTable_Vanilla_25_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_25_SpellFormID, _TIM_AspectTable_Vanilla_25_SpellXPEarned, _TIM_AspectTable_Vanilla_25_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_25_SpellFormID, _TIM_AspectTable_Vanilla_25_SpellXPEarned, _TIM_AspectTable_Vanilla_25_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_25_SpellFormID, _TIM_AspectTable_Vanilla_25_SpellXPEarned, _TIM_AspectTable_Vanilla_25_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 26
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 26")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_26_SpellFormID, _TIM_AspectTable_Apocalypse_26_SpellXPEarned, _TIM_AspectTable_Apocalypse_26_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_26_SpellFormID, _TIM_AspectTable_Apocalypse_26_SpellXPEarned, _TIM_AspectTable_Apocalypse_26_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_26_SpellFormID, _TIM_AspectTable_Apocalypse_26_SpellXPEarned, _TIM_AspectTable_Apocalypse_26_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_26_SpellFormID, _TIM_AspectTable_Mysticism_26_SpellXPEarned, _TIM_AspectTable_Mysticism_26_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_26_SpellFormID, _TIM_AspectTable_Mysticism_26_SpellXPEarned, _TIM_AspectTable_Mysticism_26_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_26_SpellFormID, _TIM_AspectTable_Mysticism_26_SpellXPEarned, _TIM_AspectTable_Mysticism_26_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_26_SpellFormID, _TIM_AspectTable_Vanilla_26_SpellXPEarned, _TIM_AspectTable_Vanilla_26_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_26_SpellFormID, _TIM_AspectTable_Vanilla_26_SpellXPEarned, _TIM_AspectTable_Vanilla_26_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_26_SpellFormID, _TIM_AspectTable_Vanilla_26_SpellXPEarned, _TIM_AspectTable_Vanilla_26_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_26_SpellFormID, _TIM_AspectTable_Vanilla_26_SpellXPEarned, _TIM_AspectTable_Vanilla_26_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_26_SpellFormID, _TIM_AspectTable_Vanilla_26_SpellXPEarned, _TIM_AspectTable_Vanilla_26_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_26_SpellFormID, _TIM_AspectTable_Vanilla_26_SpellXPEarned, _TIM_AspectTable_Vanilla_26_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_26_SpellFormID, _TIM_AspectTable_Vanilla_26_SpellXPEarned, _TIM_AspectTable_Vanilla_26_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_26_SpellFormID, _TIM_AspectTable_Vanilla_26_SpellXPEarned, _TIM_AspectTable_Vanilla_26_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_26_SpellFormID, _TIM_AspectTable_Vanilla_26_SpellXPEarned, _TIM_AspectTable_Vanilla_26_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 27
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 27")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_27_SpellFormID, _TIM_AspectTable_Apocalypse_27_SpellXPEarned, _TIM_AspectTable_Apocalypse_27_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_27_SpellFormID, _TIM_AspectTable_Apocalypse_27_SpellXPEarned, _TIM_AspectTable_Apocalypse_27_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_27_SpellFormID, _TIM_AspectTable_Apocalypse_27_SpellXPEarned, _TIM_AspectTable_Apocalypse_27_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_27_SpellFormID, _TIM_AspectTable_Mysticism_27_SpellXPEarned, _TIM_AspectTable_Mysticism_27_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_27_SpellFormID, _TIM_AspectTable_Mysticism_27_SpellXPEarned, _TIM_AspectTable_Mysticism_27_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_27_SpellFormID, _TIM_AspectTable_Mysticism_27_SpellXPEarned, _TIM_AspectTable_Mysticism_27_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_27_SpellFormID, _TIM_AspectTable_Vanilla_27_SpellXPEarned, _TIM_AspectTable_Vanilla_27_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_27_SpellFormID, _TIM_AspectTable_Vanilla_27_SpellXPEarned, _TIM_AspectTable_Vanilla_27_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_27_SpellFormID, _TIM_AspectTable_Vanilla_27_SpellXPEarned, _TIM_AspectTable_Vanilla_27_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_27_SpellFormID, _TIM_AspectTable_Vanilla_27_SpellXPEarned, _TIM_AspectTable_Vanilla_27_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_27_SpellFormID, _TIM_AspectTable_Vanilla_27_SpellXPEarned, _TIM_AspectTable_Vanilla_27_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_27_SpellFormID, _TIM_AspectTable_Vanilla_27_SpellXPEarned, _TIM_AspectTable_Vanilla_27_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_27_SpellFormID, _TIM_AspectTable_Vanilla_27_SpellXPEarned, _TIM_AspectTable_Vanilla_27_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_27_SpellFormID, _TIM_AspectTable_Vanilla_27_SpellXPEarned, _TIM_AspectTable_Vanilla_27_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_27_SpellFormID, _TIM_AspectTable_Vanilla_27_SpellXPEarned, _TIM_AspectTable_Vanilla_27_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 28
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 28")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_28_SpellFormID, _TIM_AspectTable_Apocalypse_28_SpellXPEarned, _TIM_AspectTable_Apocalypse_28_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_28_SpellFormID, _TIM_AspectTable_Apocalypse_28_SpellXPEarned, _TIM_AspectTable_Apocalypse_28_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_28_SpellFormID, _TIM_AspectTable_Apocalypse_28_SpellXPEarned, _TIM_AspectTable_Apocalypse_28_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_28_SpellFormID, _TIM_AspectTable_Mysticism_28_SpellXPEarned, _TIM_AspectTable_Mysticism_28_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_28_SpellFormID, _TIM_AspectTable_Mysticism_28_SpellXPEarned, _TIM_AspectTable_Mysticism_28_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_28_SpellFormID, _TIM_AspectTable_Mysticism_28_SpellXPEarned, _TIM_AspectTable_Mysticism_28_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_28_SpellFormID, _TIM_AspectTable_Vanilla_28_SpellXPEarned, _TIM_AspectTable_Vanilla_28_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_28_SpellFormID, _TIM_AspectTable_Vanilla_28_SpellXPEarned, _TIM_AspectTable_Vanilla_28_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_28_SpellFormID, _TIM_AspectTable_Vanilla_28_SpellXPEarned, _TIM_AspectTable_Vanilla_28_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_28_SpellFormID, _TIM_AspectTable_Vanilla_28_SpellXPEarned, _TIM_AspectTable_Vanilla_28_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_28_SpellFormID, _TIM_AspectTable_Vanilla_28_SpellXPEarned, _TIM_AspectTable_Vanilla_28_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_28_SpellFormID, _TIM_AspectTable_Vanilla_28_SpellXPEarned, _TIM_AspectTable_Vanilla_28_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_28_SpellFormID, _TIM_AspectTable_Vanilla_28_SpellXPEarned, _TIM_AspectTable_Vanilla_28_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_28_SpellFormID, _TIM_AspectTable_Vanilla_28_SpellXPEarned, _TIM_AspectTable_Vanilla_28_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_28_SpellFormID, _TIM_AspectTable_Vanilla_28_SpellXPEarned, _TIM_AspectTable_Vanilla_28_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 29
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 29")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_29_SpellFormID, _TIM_AspectTable_Apocalypse_29_SpellXPEarned, _TIM_AspectTable_Apocalypse_29_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_29_SpellFormID, _TIM_AspectTable_Apocalypse_29_SpellXPEarned, _TIM_AspectTable_Apocalypse_29_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_29_SpellFormID, _TIM_AspectTable_Apocalypse_29_SpellXPEarned, _TIM_AspectTable_Apocalypse_29_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_29_SpellFormID, _TIM_AspectTable_Mysticism_29_SpellXPEarned, _TIM_AspectTable_Mysticism_29_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_29_SpellFormID, _TIM_AspectTable_Mysticism_29_SpellXPEarned, _TIM_AspectTable_Mysticism_29_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_29_SpellFormID, _TIM_AspectTable_Mysticism_29_SpellXPEarned, _TIM_AspectTable_Mysticism_29_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_29_SpellFormID, _TIM_AspectTable_Vanilla_29_SpellXPEarned, _TIM_AspectTable_Vanilla_29_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_29_SpellFormID, _TIM_AspectTable_Vanilla_29_SpellXPEarned, _TIM_AspectTable_Vanilla_29_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_29_SpellFormID, _TIM_AspectTable_Vanilla_29_SpellXPEarned, _TIM_AspectTable_Vanilla_29_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_29_SpellFormID, _TIM_AspectTable_Vanilla_29_SpellXPEarned, _TIM_AspectTable_Vanilla_29_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_29_SpellFormID, _TIM_AspectTable_Vanilla_29_SpellXPEarned, _TIM_AspectTable_Vanilla_29_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_29_SpellFormID, _TIM_AspectTable_Vanilla_29_SpellXPEarned, _TIM_AspectTable_Vanilla_29_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_29_SpellFormID, _TIM_AspectTable_Vanilla_29_SpellXPEarned, _TIM_AspectTable_Vanilla_29_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_29_SpellFormID, _TIM_AspectTable_Vanilla_29_SpellXPEarned, _TIM_AspectTable_Vanilla_29_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_29_SpellFormID, _TIM_AspectTable_Vanilla_29_SpellXPEarned, _TIM_AspectTable_Vanilla_29_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 30
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 30")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_30_SpellFormID, _TIM_AspectTable_Apocalypse_30_SpellXPEarned, _TIM_AspectTable_Apocalypse_30_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_30_SpellFormID, _TIM_AspectTable_Apocalypse_30_SpellXPEarned, _TIM_AspectTable_Apocalypse_30_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_30_SpellFormID, _TIM_AspectTable_Apocalypse_30_SpellXPEarned, _TIM_AspectTable_Apocalypse_30_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_30_SpellFormID, _TIM_AspectTable_Mysticism_30_SpellXPEarned, _TIM_AspectTable_Mysticism_30_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_30_SpellFormID, _TIM_AspectTable_Mysticism_30_SpellXPEarned, _TIM_AspectTable_Mysticism_30_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_30_SpellFormID, _TIM_AspectTable_Mysticism_30_SpellXPEarned, _TIM_AspectTable_Mysticism_30_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_30_SpellFormID, _TIM_AspectTable_Vanilla_30_SpellXPEarned, _TIM_AspectTable_Vanilla_30_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_30_SpellFormID, _TIM_AspectTable_Vanilla_30_SpellXPEarned, _TIM_AspectTable_Vanilla_30_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_30_SpellFormID, _TIM_AspectTable_Vanilla_30_SpellXPEarned, _TIM_AspectTable_Vanilla_30_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_30_SpellFormID, _TIM_AspectTable_Vanilla_30_SpellXPEarned, _TIM_AspectTable_Vanilla_30_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_30_SpellFormID, _TIM_AspectTable_Vanilla_30_SpellXPEarned, _TIM_AspectTable_Vanilla_30_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_30_SpellFormID, _TIM_AspectTable_Vanilla_30_SpellXPEarned, _TIM_AspectTable_Vanilla_30_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_30_SpellFormID, _TIM_AspectTable_Vanilla_30_SpellXPEarned, _TIM_AspectTable_Vanilla_30_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_30_SpellFormID, _TIM_AspectTable_Vanilla_30_SpellXPEarned, _TIM_AspectTable_Vanilla_30_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_30_SpellFormID, _TIM_AspectTable_Vanilla_30_SpellXPEarned, _TIM_AspectTable_Vanilla_30_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 31
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 31")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_31_SpellFormID, _TIM_AspectTable_Apocalypse_31_SpellXPEarned, _TIM_AspectTable_Apocalypse_31_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_31_SpellFormID, _TIM_AspectTable_Apocalypse_31_SpellXPEarned, _TIM_AspectTable_Apocalypse_31_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_31_SpellFormID, _TIM_AspectTable_Apocalypse_31_SpellXPEarned, _TIM_AspectTable_Apocalypse_31_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_31_SpellFormID, _TIM_AspectTable_Mysticism_31_SpellXPEarned, _TIM_AspectTable_Mysticism_31_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_31_SpellFormID, _TIM_AspectTable_Mysticism_31_SpellXPEarned, _TIM_AspectTable_Mysticism_31_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_31_SpellFormID, _TIM_AspectTable_Mysticism_31_SpellXPEarned, _TIM_AspectTable_Mysticism_31_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_31_SpellFormID, _TIM_AspectTable_Vanilla_31_SpellXPEarned, _TIM_AspectTable_Vanilla_31_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_31_SpellFormID, _TIM_AspectTable_Vanilla_31_SpellXPEarned, _TIM_AspectTable_Vanilla_31_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_31_SpellFormID, _TIM_AspectTable_Vanilla_31_SpellXPEarned, _TIM_AspectTable_Vanilla_31_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_31_SpellFormID, _TIM_AspectTable_Vanilla_31_SpellXPEarned, _TIM_AspectTable_Vanilla_31_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_31_SpellFormID, _TIM_AspectTable_Vanilla_31_SpellXPEarned, _TIM_AspectTable_Vanilla_31_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_31_SpellFormID, _TIM_AspectTable_Vanilla_31_SpellXPEarned, _TIM_AspectTable_Vanilla_31_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_31_SpellFormID, _TIM_AspectTable_Vanilla_31_SpellXPEarned, _TIM_AspectTable_Vanilla_31_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_31_SpellFormID, _TIM_AspectTable_Vanilla_31_SpellXPEarned, _TIM_AspectTable_Vanilla_31_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_31_SpellFormID, _TIM_AspectTable_Vanilla_31_SpellXPEarned, _TIM_AspectTable_Vanilla_31_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 32
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 32")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_32_SpellFormID, _TIM_AspectTable_Apocalypse_32_SpellXPEarned, _TIM_AspectTable_Apocalypse_32_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_32_SpellFormID, _TIM_AspectTable_Apocalypse_32_SpellXPEarned, _TIM_AspectTable_Apocalypse_32_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_32_SpellFormID, _TIM_AspectTable_Apocalypse_32_SpellXPEarned, _TIM_AspectTable_Apocalypse_32_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_32_SpellFormID, _TIM_AspectTable_Mysticism_32_SpellXPEarned, _TIM_AspectTable_Mysticism_32_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_32_SpellFormID, _TIM_AspectTable_Mysticism_32_SpellXPEarned, _TIM_AspectTable_Mysticism_32_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_32_SpellFormID, _TIM_AspectTable_Mysticism_32_SpellXPEarned, _TIM_AspectTable_Mysticism_32_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_32_SpellFormID, _TIM_AspectTable_Vanilla_32_SpellXPEarned, _TIM_AspectTable_Vanilla_32_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_32_SpellFormID, _TIM_AspectTable_Vanilla_32_SpellXPEarned, _TIM_AspectTable_Vanilla_32_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_32_SpellFormID, _TIM_AspectTable_Vanilla_32_SpellXPEarned, _TIM_AspectTable_Vanilla_32_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_32_SpellFormID, _TIM_AspectTable_Vanilla_32_SpellXPEarned, _TIM_AspectTable_Vanilla_32_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_32_SpellFormID, _TIM_AspectTable_Vanilla_32_SpellXPEarned, _TIM_AspectTable_Vanilla_32_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_32_SpellFormID, _TIM_AspectTable_Vanilla_32_SpellXPEarned, _TIM_AspectTable_Vanilla_32_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_32_SpellFormID, _TIM_AspectTable_Vanilla_32_SpellXPEarned, _TIM_AspectTable_Vanilla_32_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_32_SpellFormID, _TIM_AspectTable_Vanilla_32_SpellXPEarned, _TIM_AspectTable_Vanilla_32_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_32_SpellFormID, _TIM_AspectTable_Vanilla_32_SpellXPEarned, _TIM_AspectTable_Vanilla_32_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 33
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 33")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_33_SpellFormID, _TIM_AspectTable_Apocalypse_33_SpellXPEarned, _TIM_AspectTable_Apocalypse_33_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_33_SpellFormID, _TIM_AspectTable_Apocalypse_33_SpellXPEarned, _TIM_AspectTable_Apocalypse_33_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_33_SpellFormID, _TIM_AspectTable_Apocalypse_33_SpellXPEarned, _TIM_AspectTable_Apocalypse_33_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_33_SpellFormID, _TIM_AspectTable_Mysticism_33_SpellXPEarned, _TIM_AspectTable_Mysticism_33_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_33_SpellFormID, _TIM_AspectTable_Mysticism_33_SpellXPEarned, _TIM_AspectTable_Mysticism_33_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_33_SpellFormID, _TIM_AspectTable_Mysticism_33_SpellXPEarned, _TIM_AspectTable_Mysticism_33_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_33_SpellFormID, _TIM_AspectTable_Vanilla_33_SpellXPEarned, _TIM_AspectTable_Vanilla_33_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_33_SpellFormID, _TIM_AspectTable_Vanilla_33_SpellXPEarned, _TIM_AspectTable_Vanilla_33_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_33_SpellFormID, _TIM_AspectTable_Vanilla_33_SpellXPEarned, _TIM_AspectTable_Vanilla_33_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_33_SpellFormID, _TIM_AspectTable_Vanilla_33_SpellXPEarned, _TIM_AspectTable_Vanilla_33_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_33_SpellFormID, _TIM_AspectTable_Vanilla_33_SpellXPEarned, _TIM_AspectTable_Vanilla_33_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_33_SpellFormID, _TIM_AspectTable_Vanilla_33_SpellXPEarned, _TIM_AspectTable_Vanilla_33_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_33_SpellFormID, _TIM_AspectTable_Vanilla_33_SpellXPEarned, _TIM_AspectTable_Vanilla_33_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_33_SpellFormID, _TIM_AspectTable_Vanilla_33_SpellXPEarned, _TIM_AspectTable_Vanilla_33_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_33_SpellFormID, _TIM_AspectTable_Vanilla_33_SpellXPEarned, _TIM_AspectTable_Vanilla_33_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 34
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 34")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_34_SpellFormID, _TIM_AspectTable_Apocalypse_34_SpellXPEarned, _TIM_AspectTable_Apocalypse_34_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_34_SpellFormID, _TIM_AspectTable_Apocalypse_34_SpellXPEarned, _TIM_AspectTable_Apocalypse_34_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_34_SpellFormID, _TIM_AspectTable_Apocalypse_34_SpellXPEarned, _TIM_AspectTable_Apocalypse_34_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_34_SpellFormID, _TIM_AspectTable_Mysticism_34_SpellXPEarned, _TIM_AspectTable_Mysticism_34_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_34_SpellFormID, _TIM_AspectTable_Mysticism_34_SpellXPEarned, _TIM_AspectTable_Mysticism_34_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_34_SpellFormID, _TIM_AspectTable_Mysticism_34_SpellXPEarned, _TIM_AspectTable_Mysticism_34_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_34_SpellFormID, _TIM_AspectTable_Vanilla_34_SpellXPEarned, _TIM_AspectTable_Vanilla_34_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_34_SpellFormID, _TIM_AspectTable_Vanilla_34_SpellXPEarned, _TIM_AspectTable_Vanilla_34_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_34_SpellFormID, _TIM_AspectTable_Vanilla_34_SpellXPEarned, _TIM_AspectTable_Vanilla_34_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_34_SpellFormID, _TIM_AspectTable_Vanilla_34_SpellXPEarned, _TIM_AspectTable_Vanilla_34_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_34_SpellFormID, _TIM_AspectTable_Vanilla_34_SpellXPEarned, _TIM_AspectTable_Vanilla_34_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_34_SpellFormID, _TIM_AspectTable_Vanilla_34_SpellXPEarned, _TIM_AspectTable_Vanilla_34_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_34_SpellFormID, _TIM_AspectTable_Vanilla_34_SpellXPEarned, _TIM_AspectTable_Vanilla_34_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_34_SpellFormID, _TIM_AspectTable_Vanilla_34_SpellXPEarned, _TIM_AspectTable_Vanilla_34_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_34_SpellFormID, _TIM_AspectTable_Vanilla_34_SpellXPEarned, _TIM_AspectTable_Vanilla_34_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 35
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 35")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_35_SpellFormID, _TIM_AspectTable_Apocalypse_35_SpellXPEarned, _TIM_AspectTable_Apocalypse_35_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_35_SpellFormID, _TIM_AspectTable_Apocalypse_35_SpellXPEarned, _TIM_AspectTable_Apocalypse_35_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_35_SpellFormID, _TIM_AspectTable_Apocalypse_35_SpellXPEarned, _TIM_AspectTable_Apocalypse_35_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_35_SpellFormID, _TIM_AspectTable_Mysticism_35_SpellXPEarned, _TIM_AspectTable_Mysticism_35_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_35_SpellFormID, _TIM_AspectTable_Mysticism_35_SpellXPEarned, _TIM_AspectTable_Mysticism_35_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_35_SpellFormID, _TIM_AspectTable_Mysticism_35_SpellXPEarned, _TIM_AspectTable_Mysticism_35_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_35_SpellFormID, _TIM_AspectTable_Vanilla_35_SpellXPEarned, _TIM_AspectTable_Vanilla_35_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_35_SpellFormID, _TIM_AspectTable_Vanilla_35_SpellXPEarned, _TIM_AspectTable_Vanilla_35_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_35_SpellFormID, _TIM_AspectTable_Vanilla_35_SpellXPEarned, _TIM_AspectTable_Vanilla_35_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_35_SpellFormID, _TIM_AspectTable_Vanilla_35_SpellXPEarned, _TIM_AspectTable_Vanilla_35_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_35_SpellFormID, _TIM_AspectTable_Vanilla_35_SpellXPEarned, _TIM_AspectTable_Vanilla_35_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_35_SpellFormID, _TIM_AspectTable_Vanilla_35_SpellXPEarned, _TIM_AspectTable_Vanilla_35_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_35_SpellFormID, _TIM_AspectTable_Vanilla_35_SpellXPEarned, _TIM_AspectTable_Vanilla_35_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_35_SpellFormID, _TIM_AspectTable_Vanilla_35_SpellXPEarned, _TIM_AspectTable_Vanilla_35_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_35_SpellFormID, _TIM_AspectTable_Vanilla_35_SpellXPEarned, _TIM_AspectTable_Vanilla_35_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 36
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 36")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_36_SpellFormID, _TIM_AspectTable_Apocalypse_36_SpellXPEarned, _TIM_AspectTable_Apocalypse_36_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_36_SpellFormID, _TIM_AspectTable_Apocalypse_36_SpellXPEarned, _TIM_AspectTable_Apocalypse_36_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_36_SpellFormID, _TIM_AspectTable_Apocalypse_36_SpellXPEarned, _TIM_AspectTable_Apocalypse_36_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_36_SpellFormID, _TIM_AspectTable_Mysticism_36_SpellXPEarned, _TIM_AspectTable_Mysticism_36_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_36_SpellFormID, _TIM_AspectTable_Mysticism_36_SpellXPEarned, _TIM_AspectTable_Mysticism_36_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_36_SpellFormID, _TIM_AspectTable_Mysticism_36_SpellXPEarned, _TIM_AspectTable_Mysticism_36_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_36_SpellFormID, _TIM_AspectTable_Vanilla_36_SpellXPEarned, _TIM_AspectTable_Vanilla_36_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_36_SpellFormID, _TIM_AspectTable_Vanilla_36_SpellXPEarned, _TIM_AspectTable_Vanilla_36_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_36_SpellFormID, _TIM_AspectTable_Vanilla_36_SpellXPEarned, _TIM_AspectTable_Vanilla_36_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_36_SpellFormID, _TIM_AspectTable_Vanilla_36_SpellXPEarned, _TIM_AspectTable_Vanilla_36_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_36_SpellFormID, _TIM_AspectTable_Vanilla_36_SpellXPEarned, _TIM_AspectTable_Vanilla_36_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_36_SpellFormID, _TIM_AspectTable_Vanilla_36_SpellXPEarned, _TIM_AspectTable_Vanilla_36_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_36_SpellFormID, _TIM_AspectTable_Vanilla_36_SpellXPEarned, _TIM_AspectTable_Vanilla_36_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_36_SpellFormID, _TIM_AspectTable_Vanilla_36_SpellXPEarned, _TIM_AspectTable_Vanilla_36_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_36_SpellFormID, _TIM_AspectTable_Vanilla_36_SpellXPEarned, _TIM_AspectTable_Vanilla_36_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 37
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 37")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_37_SpellFormID, _TIM_AspectTable_Apocalypse_37_SpellXPEarned, _TIM_AspectTable_Apocalypse_37_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_37_SpellFormID, _TIM_AspectTable_Apocalypse_37_SpellXPEarned, _TIM_AspectTable_Apocalypse_37_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_37_SpellFormID, _TIM_AspectTable_Apocalypse_37_SpellXPEarned, _TIM_AspectTable_Apocalypse_37_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_37_SpellFormID, _TIM_AspectTable_Mysticism_37_SpellXPEarned, _TIM_AspectTable_Mysticism_37_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_37_SpellFormID, _TIM_AspectTable_Mysticism_37_SpellXPEarned, _TIM_AspectTable_Mysticism_37_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_37_SpellFormID, _TIM_AspectTable_Mysticism_37_SpellXPEarned, _TIM_AspectTable_Mysticism_37_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_37_SpellFormID, _TIM_AspectTable_Vanilla_37_SpellXPEarned, _TIM_AspectTable_Vanilla_37_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_37_SpellFormID, _TIM_AspectTable_Vanilla_37_SpellXPEarned, _TIM_AspectTable_Vanilla_37_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_37_SpellFormID, _TIM_AspectTable_Vanilla_37_SpellXPEarned, _TIM_AspectTable_Vanilla_37_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_37_SpellFormID, _TIM_AspectTable_Vanilla_37_SpellXPEarned, _TIM_AspectTable_Vanilla_37_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_37_SpellFormID, _TIM_AspectTable_Vanilla_37_SpellXPEarned, _TIM_AspectTable_Vanilla_37_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_37_SpellFormID, _TIM_AspectTable_Vanilla_37_SpellXPEarned, _TIM_AspectTable_Vanilla_37_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_37_SpellFormID, _TIM_AspectTable_Vanilla_37_SpellXPEarned, _TIM_AspectTable_Vanilla_37_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_37_SpellFormID, _TIM_AspectTable_Vanilla_37_SpellXPEarned, _TIM_AspectTable_Vanilla_37_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_37_SpellFormID, _TIM_AspectTable_Vanilla_37_SpellXPEarned, _TIM_AspectTable_Vanilla_37_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 38
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 38")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_38_SpellFormID, _TIM_AspectTable_Apocalypse_38_SpellXPEarned, _TIM_AspectTable_Apocalypse_38_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_38_SpellFormID, _TIM_AspectTable_Apocalypse_38_SpellXPEarned, _TIM_AspectTable_Apocalypse_38_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_38_SpellFormID, _TIM_AspectTable_Apocalypse_38_SpellXPEarned, _TIM_AspectTable_Apocalypse_38_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_38_SpellFormID, _TIM_AspectTable_Mysticism_38_SpellXPEarned, _TIM_AspectTable_Mysticism_38_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_38_SpellFormID, _TIM_AspectTable_Mysticism_38_SpellXPEarned, _TIM_AspectTable_Mysticism_38_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_38_SpellFormID, _TIM_AspectTable_Mysticism_38_SpellXPEarned, _TIM_AspectTable_Mysticism_38_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_38_SpellFormID, _TIM_AspectTable_Vanilla_38_SpellXPEarned, _TIM_AspectTable_Vanilla_38_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_38_SpellFormID, _TIM_AspectTable_Vanilla_38_SpellXPEarned, _TIM_AspectTable_Vanilla_38_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_38_SpellFormID, _TIM_AspectTable_Vanilla_38_SpellXPEarned, _TIM_AspectTable_Vanilla_38_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_38_SpellFormID, _TIM_AspectTable_Vanilla_38_SpellXPEarned, _TIM_AspectTable_Vanilla_38_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_38_SpellFormID, _TIM_AspectTable_Vanilla_38_SpellXPEarned, _TIM_AspectTable_Vanilla_38_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_38_SpellFormID, _TIM_AspectTable_Vanilla_38_SpellXPEarned, _TIM_AspectTable_Vanilla_38_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_38_SpellFormID, _TIM_AspectTable_Vanilla_38_SpellXPEarned, _TIM_AspectTable_Vanilla_38_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_38_SpellFormID, _TIM_AspectTable_Vanilla_38_SpellXPEarned, _TIM_AspectTable_Vanilla_38_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_38_SpellFormID, _TIM_AspectTable_Vanilla_38_SpellXPEarned, _TIM_AspectTable_Vanilla_38_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 39
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 39")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_39_SpellFormID, _TIM_AspectTable_Apocalypse_39_SpellXPEarned, _TIM_AspectTable_Apocalypse_39_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_39_SpellFormID, _TIM_AspectTable_Apocalypse_39_SpellXPEarned, _TIM_AspectTable_Apocalypse_39_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_39_SpellFormID, _TIM_AspectTable_Apocalypse_39_SpellXPEarned, _TIM_AspectTable_Apocalypse_39_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_39_SpellFormID, _TIM_AspectTable_Mysticism_39_SpellXPEarned, _TIM_AspectTable_Mysticism_39_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_39_SpellFormID, _TIM_AspectTable_Mysticism_39_SpellXPEarned, _TIM_AspectTable_Mysticism_39_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_39_SpellFormID, _TIM_AspectTable_Mysticism_39_SpellXPEarned, _TIM_AspectTable_Mysticism_39_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_39_SpellFormID, _TIM_AspectTable_Vanilla_39_SpellXPEarned, _TIM_AspectTable_Vanilla_39_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_39_SpellFormID, _TIM_AspectTable_Vanilla_39_SpellXPEarned, _TIM_AspectTable_Vanilla_39_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_39_SpellFormID, _TIM_AspectTable_Vanilla_39_SpellXPEarned, _TIM_AspectTable_Vanilla_39_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_39_SpellFormID, _TIM_AspectTable_Vanilla_39_SpellXPEarned, _TIM_AspectTable_Vanilla_39_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_39_SpellFormID, _TIM_AspectTable_Vanilla_39_SpellXPEarned, _TIM_AspectTable_Vanilla_39_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_39_SpellFormID, _TIM_AspectTable_Vanilla_39_SpellXPEarned, _TIM_AspectTable_Vanilla_39_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_39_SpellFormID, _TIM_AspectTable_Vanilla_39_SpellXPEarned, _TIM_AspectTable_Vanilla_39_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_39_SpellFormID, _TIM_AspectTable_Vanilla_39_SpellXPEarned, _TIM_AspectTable_Vanilla_39_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_39_SpellFormID, _TIM_AspectTable_Vanilla_39_SpellXPEarned, _TIM_AspectTable_Vanilla_39_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 40
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 40")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_40_SpellFormID, _TIM_AspectTable_Apocalypse_40_SpellXPEarned, _TIM_AspectTable_Apocalypse_40_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_40_SpellFormID, _TIM_AspectTable_Apocalypse_40_SpellXPEarned, _TIM_AspectTable_Apocalypse_40_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_40_SpellFormID, _TIM_AspectTable_Apocalypse_40_SpellXPEarned, _TIM_AspectTable_Apocalypse_40_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_40_SpellFormID, _TIM_AspectTable_Mysticism_40_SpellXPEarned, _TIM_AspectTable_Mysticism_40_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_40_SpellFormID, _TIM_AspectTable_Mysticism_40_SpellXPEarned, _TIM_AspectTable_Mysticism_40_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_40_SpellFormID, _TIM_AspectTable_Mysticism_40_SpellXPEarned, _TIM_AspectTable_Mysticism_40_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_40_SpellFormID, _TIM_AspectTable_Vanilla_40_SpellXPEarned, _TIM_AspectTable_Vanilla_40_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_40_SpellFormID, _TIM_AspectTable_Vanilla_40_SpellXPEarned, _TIM_AspectTable_Vanilla_40_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_40_SpellFormID, _TIM_AspectTable_Vanilla_40_SpellXPEarned, _TIM_AspectTable_Vanilla_40_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_40_SpellFormID, _TIM_AspectTable_Vanilla_40_SpellXPEarned, _TIM_AspectTable_Vanilla_40_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_40_SpellFormID, _TIM_AspectTable_Vanilla_40_SpellXPEarned, _TIM_AspectTable_Vanilla_40_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_40_SpellFormID, _TIM_AspectTable_Vanilla_40_SpellXPEarned, _TIM_AspectTable_Vanilla_40_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_40_SpellFormID, _TIM_AspectTable_Vanilla_40_SpellXPEarned, _TIM_AspectTable_Vanilla_40_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_40_SpellFormID, _TIM_AspectTable_Vanilla_40_SpellXPEarned, _TIM_AspectTable_Vanilla_40_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_40_SpellFormID, _TIM_AspectTable_Vanilla_40_SpellXPEarned, _TIM_AspectTable_Vanilla_40_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 41
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 41")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_41_SpellFormID, _TIM_AspectTable_Apocalypse_41_SpellXPEarned, _TIM_AspectTable_Apocalypse_41_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_41_SpellFormID, _TIM_AspectTable_Apocalypse_41_SpellXPEarned, _TIM_AspectTable_Apocalypse_41_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_41_SpellFormID, _TIM_AspectTable_Apocalypse_41_SpellXPEarned, _TIM_AspectTable_Apocalypse_41_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_41_SpellFormID, _TIM_AspectTable_Mysticism_41_SpellXPEarned, _TIM_AspectTable_Mysticism_41_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_41_SpellFormID, _TIM_AspectTable_Mysticism_41_SpellXPEarned, _TIM_AspectTable_Mysticism_41_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_41_SpellFormID, _TIM_AspectTable_Mysticism_41_SpellXPEarned, _TIM_AspectTable_Mysticism_41_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_41_SpellFormID, _TIM_AspectTable_Vanilla_41_SpellXPEarned, _TIM_AspectTable_Vanilla_41_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_41_SpellFormID, _TIM_AspectTable_Vanilla_41_SpellXPEarned, _TIM_AspectTable_Vanilla_41_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_41_SpellFormID, _TIM_AspectTable_Vanilla_41_SpellXPEarned, _TIM_AspectTable_Vanilla_41_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_41_SpellFormID, _TIM_AspectTable_Vanilla_41_SpellXPEarned, _TIM_AspectTable_Vanilla_41_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_41_SpellFormID, _TIM_AspectTable_Vanilla_41_SpellXPEarned, _TIM_AspectTable_Vanilla_41_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_41_SpellFormID, _TIM_AspectTable_Vanilla_41_SpellXPEarned, _TIM_AspectTable_Vanilla_41_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_41_SpellFormID, _TIM_AspectTable_Vanilla_41_SpellXPEarned, _TIM_AspectTable_Vanilla_41_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_41_SpellFormID, _TIM_AspectTable_Vanilla_41_SpellXPEarned, _TIM_AspectTable_Vanilla_41_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_41_SpellFormID, _TIM_AspectTable_Vanilla_41_SpellXPEarned, _TIM_AspectTable_Vanilla_41_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 42
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 42")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_42_SpellFormID, _TIM_AspectTable_Apocalypse_42_SpellXPEarned, _TIM_AspectTable_Apocalypse_42_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_42_SpellFormID, _TIM_AspectTable_Apocalypse_42_SpellXPEarned, _TIM_AspectTable_Apocalypse_42_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_42_SpellFormID, _TIM_AspectTable_Apocalypse_42_SpellXPEarned, _TIM_AspectTable_Apocalypse_42_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_42_SpellFormID, _TIM_AspectTable_Mysticism_42_SpellXPEarned, _TIM_AspectTable_Mysticism_42_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_42_SpellFormID, _TIM_AspectTable_Mysticism_42_SpellXPEarned, _TIM_AspectTable_Mysticism_42_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_42_SpellFormID, _TIM_AspectTable_Mysticism_42_SpellXPEarned, _TIM_AspectTable_Mysticism_42_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_42_SpellFormID, _TIM_AspectTable_Vanilla_42_SpellXPEarned, _TIM_AspectTable_Vanilla_42_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_42_SpellFormID, _TIM_AspectTable_Vanilla_42_SpellXPEarned, _TIM_AspectTable_Vanilla_42_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_42_SpellFormID, _TIM_AspectTable_Vanilla_42_SpellXPEarned, _TIM_AspectTable_Vanilla_42_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_42_SpellFormID, _TIM_AspectTable_Vanilla_42_SpellXPEarned, _TIM_AspectTable_Vanilla_42_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_42_SpellFormID, _TIM_AspectTable_Vanilla_42_SpellXPEarned, _TIM_AspectTable_Vanilla_42_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_42_SpellFormID, _TIM_AspectTable_Vanilla_42_SpellXPEarned, _TIM_AspectTable_Vanilla_42_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_42_SpellFormID, _TIM_AspectTable_Vanilla_42_SpellXPEarned, _TIM_AspectTable_Vanilla_42_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_42_SpellFormID, _TIM_AspectTable_Vanilla_42_SpellXPEarned, _TIM_AspectTable_Vanilla_42_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_42_SpellFormID, _TIM_AspectTable_Vanilla_42_SpellXPEarned, _TIM_AspectTable_Vanilla_42_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 43
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 43")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_43_SpellFormID, _TIM_AspectTable_Apocalypse_43_SpellXPEarned, _TIM_AspectTable_Apocalypse_43_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_43_SpellFormID, _TIM_AspectTable_Apocalypse_43_SpellXPEarned, _TIM_AspectTable_Apocalypse_43_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_43_SpellFormID, _TIM_AspectTable_Apocalypse_43_SpellXPEarned, _TIM_AspectTable_Apocalypse_43_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_43_SpellFormID, _TIM_AspectTable_Mysticism_43_SpellXPEarned, _TIM_AspectTable_Mysticism_43_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_43_SpellFormID, _TIM_AspectTable_Mysticism_43_SpellXPEarned, _TIM_AspectTable_Mysticism_43_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_43_SpellFormID, _TIM_AspectTable_Mysticism_43_SpellXPEarned, _TIM_AspectTable_Mysticism_43_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_43_SpellFormID, _TIM_AspectTable_Vanilla_43_SpellXPEarned, _TIM_AspectTable_Vanilla_43_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_43_SpellFormID, _TIM_AspectTable_Vanilla_43_SpellXPEarned, _TIM_AspectTable_Vanilla_43_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_43_SpellFormID, _TIM_AspectTable_Vanilla_43_SpellXPEarned, _TIM_AspectTable_Vanilla_43_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_43_SpellFormID, _TIM_AspectTable_Vanilla_43_SpellXPEarned, _TIM_AspectTable_Vanilla_43_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_43_SpellFormID, _TIM_AspectTable_Vanilla_43_SpellXPEarned, _TIM_AspectTable_Vanilla_43_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_43_SpellFormID, _TIM_AspectTable_Vanilla_43_SpellXPEarned, _TIM_AspectTable_Vanilla_43_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_43_SpellFormID, _TIM_AspectTable_Vanilla_43_SpellXPEarned, _TIM_AspectTable_Vanilla_43_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_43_SpellFormID, _TIM_AspectTable_Vanilla_43_SpellXPEarned, _TIM_AspectTable_Vanilla_43_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_43_SpellFormID, _TIM_AspectTable_Vanilla_43_SpellXPEarned, _TIM_AspectTable_Vanilla_43_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 44
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 44")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_44_SpellFormID, _TIM_AspectTable_Apocalypse_44_SpellXPEarned, _TIM_AspectTable_Apocalypse_44_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_44_SpellFormID, _TIM_AspectTable_Apocalypse_44_SpellXPEarned, _TIM_AspectTable_Apocalypse_44_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_44_SpellFormID, _TIM_AspectTable_Apocalypse_44_SpellXPEarned, _TIM_AspectTable_Apocalypse_44_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_44_SpellFormID, _TIM_AspectTable_Mysticism_44_SpellXPEarned, _TIM_AspectTable_Mysticism_44_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_44_SpellFormID, _TIM_AspectTable_Mysticism_44_SpellXPEarned, _TIM_AspectTable_Mysticism_44_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_44_SpellFormID, _TIM_AspectTable_Mysticism_44_SpellXPEarned, _TIM_AspectTable_Mysticism_44_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_44_SpellFormID, _TIM_AspectTable_Vanilla_44_SpellXPEarned, _TIM_AspectTable_Vanilla_44_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_44_SpellFormID, _TIM_AspectTable_Vanilla_44_SpellXPEarned, _TIM_AspectTable_Vanilla_44_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_44_SpellFormID, _TIM_AspectTable_Vanilla_44_SpellXPEarned, _TIM_AspectTable_Vanilla_44_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_44_SpellFormID, _TIM_AspectTable_Vanilla_44_SpellXPEarned, _TIM_AspectTable_Vanilla_44_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_44_SpellFormID, _TIM_AspectTable_Vanilla_44_SpellXPEarned, _TIM_AspectTable_Vanilla_44_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_44_SpellFormID, _TIM_AspectTable_Vanilla_44_SpellXPEarned, _TIM_AspectTable_Vanilla_44_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_44_SpellFormID, _TIM_AspectTable_Vanilla_44_SpellXPEarned, _TIM_AspectTable_Vanilla_44_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_44_SpellFormID, _TIM_AspectTable_Vanilla_44_SpellXPEarned, _TIM_AspectTable_Vanilla_44_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_44_SpellFormID, _TIM_AspectTable_Vanilla_44_SpellXPEarned, _TIM_AspectTable_Vanilla_44_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 45
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 45")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_45_SpellFormID, _TIM_AspectTable_Apocalypse_45_SpellXPEarned, _TIM_AspectTable_Apocalypse_45_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_45_SpellFormID, _TIM_AspectTable_Apocalypse_45_SpellXPEarned, _TIM_AspectTable_Apocalypse_45_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_45_SpellFormID, _TIM_AspectTable_Apocalypse_45_SpellXPEarned, _TIM_AspectTable_Apocalypse_45_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_45_SpellFormID, _TIM_AspectTable_Mysticism_45_SpellXPEarned, _TIM_AspectTable_Mysticism_45_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_45_SpellFormID, _TIM_AspectTable_Mysticism_45_SpellXPEarned, _TIM_AspectTable_Mysticism_45_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_45_SpellFormID, _TIM_AspectTable_Mysticism_45_SpellXPEarned, _TIM_AspectTable_Mysticism_45_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_45_SpellFormID, _TIM_AspectTable_Vanilla_45_SpellXPEarned, _TIM_AspectTable_Vanilla_45_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_45_SpellFormID, _TIM_AspectTable_Vanilla_45_SpellXPEarned, _TIM_AspectTable_Vanilla_45_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_45_SpellFormID, _TIM_AspectTable_Vanilla_45_SpellXPEarned, _TIM_AspectTable_Vanilla_45_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_45_SpellFormID, _TIM_AspectTable_Vanilla_45_SpellXPEarned, _TIM_AspectTable_Vanilla_45_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_45_SpellFormID, _TIM_AspectTable_Vanilla_45_SpellXPEarned, _TIM_AspectTable_Vanilla_45_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_45_SpellFormID, _TIM_AspectTable_Vanilla_45_SpellXPEarned, _TIM_AspectTable_Vanilla_45_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_45_SpellFormID, _TIM_AspectTable_Vanilla_45_SpellXPEarned, _TIM_AspectTable_Vanilla_45_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_45_SpellFormID, _TIM_AspectTable_Vanilla_45_SpellXPEarned, _TIM_AspectTable_Vanilla_45_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_45_SpellFormID, _TIM_AspectTable_Vanilla_45_SpellXPEarned, _TIM_AspectTable_Vanilla_45_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 46
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 46")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_46_SpellFormID, _TIM_AspectTable_Apocalypse_46_SpellXPEarned, _TIM_AspectTable_Apocalypse_46_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_46_SpellFormID, _TIM_AspectTable_Apocalypse_46_SpellXPEarned, _TIM_AspectTable_Apocalypse_46_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_46_SpellFormID, _TIM_AspectTable_Apocalypse_46_SpellXPEarned, _TIM_AspectTable_Apocalypse_46_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_46_SpellFormID, _TIM_AspectTable_Mysticism_46_SpellXPEarned, _TIM_AspectTable_Mysticism_46_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_46_SpellFormID, _TIM_AspectTable_Mysticism_46_SpellXPEarned, _TIM_AspectTable_Mysticism_46_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_46_SpellFormID, _TIM_AspectTable_Mysticism_46_SpellXPEarned, _TIM_AspectTable_Mysticism_46_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_46_SpellFormID, _TIM_AspectTable_Vanilla_46_SpellXPEarned, _TIM_AspectTable_Vanilla_46_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_46_SpellFormID, _TIM_AspectTable_Vanilla_46_SpellXPEarned, _TIM_AspectTable_Vanilla_46_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_46_SpellFormID, _TIM_AspectTable_Vanilla_46_SpellXPEarned, _TIM_AspectTable_Vanilla_46_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_46_SpellFormID, _TIM_AspectTable_Vanilla_46_SpellXPEarned, _TIM_AspectTable_Vanilla_46_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_46_SpellFormID, _TIM_AspectTable_Vanilla_46_SpellXPEarned, _TIM_AspectTable_Vanilla_46_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_46_SpellFormID, _TIM_AspectTable_Vanilla_46_SpellXPEarned, _TIM_AspectTable_Vanilla_46_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_46_SpellFormID, _TIM_AspectTable_Vanilla_46_SpellXPEarned, _TIM_AspectTable_Vanilla_46_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_46_SpellFormID, _TIM_AspectTable_Vanilla_46_SpellXPEarned, _TIM_AspectTable_Vanilla_46_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_46_SpellFormID, _TIM_AspectTable_Vanilla_46_SpellXPEarned, _TIM_AspectTable_Vanilla_46_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    AspectSearchIndex = 47
    if((Aspect0Index == AspectSearchIndex) || (Aspect1Index == AspectSearchIndex) || (Aspect2Index == AspectSearchIndex) || (Aspect3Index == AspectSearchIndex))
        ;Debug.Notification("_TIM: Aspect == 47")

        ; Apocalypse
        if(_TIM_Loaded_Apocalypse == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Apocalypse_47_SpellFormID, _TIM_AspectTable_Apocalypse_47_SpellXPEarned, _TIM_AspectTable_Apocalypse_47_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Apocalypse_47_SpellFormID, _TIM_AspectTable_Apocalypse_47_SpellXPEarned, _TIM_AspectTable_Apocalypse_47_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Apocalypse_47_SpellFormID, _TIM_AspectTable_Apocalypse_47_SpellXPEarned, _TIM_AspectTable_Apocalypse_47_SpellXPToLearn, ModIndex, _TIM_ModFilename_Apocalypse)
            endif
        endif

        ; Mysticism
        if(_TIM_Loaded_Mysticism == 1)
            if(Activity == 1)
                AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Mysticism_47_SpellFormID, _TIM_AspectTable_Mysticism_47_SpellXPEarned, _TIM_AspectTable_Mysticism_47_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 2)
                LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Mysticism_47_SpellFormID, _TIM_AspectTable_Mysticism_47_SpellXPEarned, _TIM_AspectTable_Mysticism_47_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            elseif(Activity == 3)
                AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Mysticism_47_SpellFormID, _TIM_AspectTable_Mysticism_47_SpellXPEarned, _TIM_AspectTable_Mysticism_47_SpellXPToLearn, ModIndex, _TIM_ModFilename_Mysticism)
            endif
        endif

        ; Vanilla
        if(Activity == 1)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_47_SpellFormID, _TIM_AspectTable_Vanilla_47_SpellXPEarned, _TIM_AspectTable_Vanilla_47_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_47_SpellFormID, _TIM_AspectTable_Vanilla_47_SpellXPEarned, _TIM_AspectTable_Vanilla_47_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoAspect(1, AspectSearchIndex, _TIM_AspectTable_Vanilla_47_SpellFormID, _TIM_AspectTable_Vanilla_47_SpellXPEarned, _TIM_AspectTable_Vanilla_47_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 2)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_47_SpellFormID, _TIM_AspectTable_Vanilla_47_SpellXPEarned, _TIM_AspectTable_Vanilla_47_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_47_SpellFormID, _TIM_AspectTable_Vanilla_47_SpellXPEarned, _TIM_AspectTable_Vanilla_47_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            LearnSpellandFillXP(SpellFormID, _TIM_AspectTable_Vanilla_47_SpellFormID, _TIM_AspectTable_Vanilla_47_SpellXPEarned, _TIM_AspectTable_Vanilla_47_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        elseif(Activity == 3)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_47_SpellFormID, _TIM_AspectTable_Vanilla_47_SpellXPEarned, _TIM_AspectTable_Vanilla_47_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Skyrim)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_47_SpellFormID, _TIM_AspectTable_Vanilla_47_SpellXPEarned, _TIM_AspectTable_Vanilla_47_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dawnguard)
            AddXPtoSpell(XP, SpellFormID, _TIM_AspectTable_Vanilla_47_SpellFormID, _TIM_AspectTable_Vanilla_47_SpellXPEarned, _TIM_AspectTable_Vanilla_47_SpellXPToLearn, ModIndex, _TIM_ModFilename_Vanilla_Dragonborn)
        endif
    endif

    endTime = Utility.GetCurrentRealTime()
    Debug.Notification("PlayerActivity(): " + (endTime - startTime) + "ms total")

endfunction

Function AddXPtoAspect(int XP, int Aspect, int[] AspectTableRef_SpellFormID, int[] AspectTableRef_SpellXPEarned, int[] AspectTableRef_SpellXPToLearn, int ModIndex, string ModFilename)
    ; PlayerCastSpell - adds xp and might teach the spell

    Int iElement = AspectTableRef_SpellFormID.Length
    Int iIndex = 0

    ; iterate this AspectTable
    while (iIndex < iElement)
        ; find the first spell of this aspect that hasn't been learned yet
        if(AspectTableRef_SpellXPEarned[iIndex] < AspectTableRef_SpellXPToLearn[iIndex])
            ; and add some xp
            AspectTableRef_SpellXPEarned[iIndex] = AspectTableRef_SpellXPEarned[iIndex] + (XP * _TIM_XPRate_Spells)
            ; if this is enough to learn the spell
            if(AspectTableRef_SpellXPEarned[iIndex] >= AspectTableRef_SpellXPToLearn[iIndex])
                ; then learn the spell
                _TIM_PlayerRef.AddSpell(Game.GetFormFromFile(AspectTableRef_SpellFormID[iIndex] + (ModIndex * 0x01000000), ModFilename) as Spell)
            ; partial advancement notifications
            elseif(AspectTableRef_SpellXPEarned[iIndex] >= (AspectTableRef_SpellXPToLearn[iIndex] * 0.75))
                Debug.Notification("75% Progress: " + _TIM_AspectTable_Names[Aspect])
            elseif(AspectTableRef_SpellXPEarned[iIndex] >= (AspectTableRef_SpellXPToLearn[iIndex] * 0.50))
                Debug.Notification("50% Progress: " + _TIM_AspectTable_Names[Aspect])
            elseif(AspectTableRef_SpellXPEarned[iIndex] >= (AspectTableRef_SpellXPToLearn[iIndex] * 0.25))
                Debug.Notification("25% Progress: " + _TIM_AspectTable_Names[Aspect])
            endif
            ; added xp to the next spell, so prepare to exit loop
            iIndex = iElement - 1
        endif
        iIndex += 1
    EndWhile
endFunction

Function LearnSpellandFillXP(int SpellFormID, int[] AspectTableRef_SpellFormID, int[] AspectTableRef_SpellXPEarned, int[] AspectTableRef_SpellXPToLearn, int ModIndex, string ModFilename)
    ; PlayerReadSpellManual - teaches spell completely and fills XP so we dont waste more xp on it
    
    Int iElement = AspectTableRef_SpellFormID.Length
    Int iIndex = 0

    ; iterate this AspectTable
    while (iIndex < iElement)
        ; find the spell within this AspectTable
        if(SpellFormID == AspectTableRef_SpellFormID[iIndex])
            ; fill the xp
            AspectTableRef_SpellXPEarned[iIndex] = AspectTableRef_SpellXPToLearn[iIndex]
            ; then learn the spell
            _TIM_PlayerRef.AddSpell(Game.GetFormFromFile(AspectTableRef_SpellFormID[iIndex] + (ModIndex * 0x01000000), ModFilename) as Spell)
            ; prepare to exit loop
            iIndex = iElement - 1
        endif
        iIndex += 1
    EndWhile
endFunction

Function AddXPtoSpell(int XP, int SpellFormID, int[] AspectTableRef_SpellFormID, int[] AspectTableRef_SpellXPEarned, int[] AspectTableRef_SpellXPToLearn, int ModIndex, string ModFilename)
    ; PlayerReadSpellWorkbook - adds xp and might teach the spell

    Int iElement = AspectTableRef_SpellFormID.Length
    Int iIndex = 0

    ; iterate this AspectTable
    while (iIndex < iElement)
        ; find the spell within this AspectTable
        if(SpellFormID == AspectTableRef_SpellFormID[iIndex])
            ; and add some xp
            AspectTableRef_SpellXPEarned[iIndex] = AspectTableRef_SpellXPEarned[iIndex] + (XP * _TIM_XPRate_Workbooks)
            ; if this is enough to learn the spell
            if(AspectTableRef_SpellXPEarned[iIndex] >= AspectTableRef_SpellXPToLearn[iIndex])
                ; then learn the spell
                _TIM_PlayerRef.AddSpell(Game.GetFormFromFile(AspectTableRef_SpellFormID[iIndex] + (ModIndex * 0x01000000), ModFilename) as Spell)
            endif
            ; added xp to spell, so prepare to exit loop
            iIndex = iElement - 1
        endif
        iIndex += 1
    EndWhile
endFunction