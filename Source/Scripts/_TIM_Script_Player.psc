Scriptname _TIM_Script_Player extends ActiveMagicEffect

Actor Property PlayerRef Auto
Keyword Property TIMTome_Keyword Auto
Keyword Property TIMSpellNote_Keyword Auto

_TIM_Script_Quest Script_Quest

Event OnInit()
    ;Debug.Notification("_TIM: Script_Player.OnInit()")

    ; find Transmundane - _TIM_Quest "Transmundane Data Manager" [QUST:XX00AA00]
    Script_Quest = Game.GetFormFromFile(0x0000AA00, "Transmundane.esp") as _TIM_Script_Quest
    if ( Script_Quest )
        ;Debug.Notification("_TIM: Quest_Data Found")
    endif

    Book filterBook
    AddInventoryEventFilter(filterBook)
endEvent

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
    Debug.Notification("_TIM: OnItemAdded() " + akBaseItem.GetFormID())
    if(akBaseItem.HasKeyword(TIMSpellNote_Keyword))
        ; learn the spell
        Script_Quest.LearnSpellfromNote(akBaseItem.GetFormID()) 
        PlayerRef.RemoveItem(akBaseItem,1,true)
    elseif(!akBaseItem.HasKeyword(TIMTome_Keyword))
        Book newTome = Script_Quest.findTIMTomeFromTomeFormID(akBaseItem.GetFormID())
        if(newTome)
            PlayerRef.RemoveItem(akBaseItem,1,true)
            PlayerRef.AddItem(newTome,1,true)
        endIf
    endif
endEvent

Event OnSpellCast(Form akSpell)
    ;Debug.Notification("_TIM: OnSpellCast()")
    Script_Quest.PlayerCastSpell(akSpell.GetFormID())
endEvent

Event OnPlayerLoadGame()
    ;Debug.Notification("_TIM: OnPlayerLoadGame()" )
    Script_Quest.Maintenance()
endEvent