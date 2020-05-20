Scriptname _TIM_Script_SpellWorkbook extends ObjectReference  

_TIM_Script_Quest Script_Quest

int Property SpellToLearn Auto
int Property XPtoGain Auto
Bool studied = false

Event OnInit()
    ;Debug.Notification("_TIM: Script_Tome.OnInit()")

        ; find Transmundane - _TIM_Quest "Transmundane Data Storage and Helper Functions" [QUST:XX00AA00]
        Script_Quest = Game.GetFormFromFile(0x0000AA00, "Transmundane.esp") as _TIM_Script_Quest
        if ( Script_Quest )
            ;Debug.Notification("_TIM: Quest_Data Found")
        endif
endEvent

Event OnRead()
    if(!studied)
        ;Debug.Notification("_TIM: OnRead()")
        Script_Quest.PlayerActivity(3, SpellToLearn, XPtoGain)
        studied = true
    endIf
endEvent
