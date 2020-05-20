Scriptname _TIM_Script_SpellAtlas extends ObjectReference  

Actor Property _TIM_PlayerRef Auto
ObjectReference Property _TIM_Furniture_SpellAtlas Auto

;Spell Property SpellRefTest Auto

_TIM_Script_Quest Script_Quest

Event OnInit()
    ;Debug.Notification("_TIM: Script_Tome.OnInit()")

        ; find Transmundane - _TIM_Quest "Transmundane Data Storage and Helper Functions" [QUST:XX00AA00]
        Script_Quest = Game.GetFormFromFile(0x0000AA00, "Transmundane.esp") as _TIM_Script_Quest
        if ( Script_Quest )
            ;Debug.Notification("_TIM: Quest_Data Found")
        endif
endEvent

Event OnRead()
    Debug.Notification("_TIM: _TIM_Furniture_SpellAtlas.OnRead()")
    
    if (Utility.IsInMenuMode())
        Debug.Notification("_TIM: Utility.IsInMenuMode()")
    endif

    Game.DisablePlayerControls(False, False, False, False, False, True) ; Ensure MessageBox is not on top of other menus & prevent book from opening normally.
    Utility.Wait(0.01)
    Game.EnablePlayerControls(False, False, False, False, False, True) ; Undo DisablePlayerControls

    _TIM_Furniture_SpellAtlas.Activate(_TIM_PlayerRef)
endEvent