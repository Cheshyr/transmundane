Scriptname _TIM_Script_Player extends ActiveMagicEffect

Actor Property PlayerRef Auto
Keyword Property TIM_Keyword_SpellManual Auto
Keyword Property TIM_Keyword_SpellWorkbook Auto

_TIM_Script_Quest Script_Quest

;/bool MRh_Casting
bool MLh_Casting/;

Event OnInit()
    ;Debug.Notification("_TIM: Script_Player.OnInit()")

    ; find Transmundane - _TIM_Quest "Transmundane Data Manager" [QUST:XX00AA00]
    Script_Quest = Game.GetFormFromFile(0x0000AA00, "Transmundane.esp") as _TIM_Script_Quest
    if ( Script_Quest )
        ;Debug.Notification("_TIM: Quest_Data Found")
    endif

    ;/RegisterForAnimationEvent(PlayerRef, "MRh_SpellFire_Event")
    RegisterForAnimationEvent(PlayerRef, "MLh_SpellFire_Event")
    RegisterForAnimationEvent(PlayerRef, "CastStop") 

    MRh_Casting = False
    MLh_Casting = False/;

    Book filterBook
    AddInventoryEventFilter(filterBook)
endEvent

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
    ;Debug.Notification("_TIM: OnItemAdded() " + akBaseItem.GetFormID())
    if(akBaseItem.HasKeyword(TIM_Keyword_SpellManual))
        ; Manuals teach a spell completely
        Script_Quest.PlayerActivity(2, akBaseItem.GetFormID(), 0)
        PlayerRef.RemoveItem(akBaseItem,1,true)
    elseif(!akBaseItem.HasKeyword(TIM_Keyword_SpellWorkbook))
        ; Replace SpellTomes with SpellWorkbooks that teach a portion of the spell
        ; Do this invisible to the player, when a SpellTome is picked up
        Book spellWorkbook = Script_Quest.findSpellWorkbookFromSpellTomeFormID(akBaseItem.GetFormID())
        if(spellWorkbook)
            PlayerRef.RemoveItem(akBaseItem,1,true)
            PlayerRef.AddItem(spellWorkbook,1,true)
        endIf
    endif
endEvent

Event OnSpellCast(Form akSpell)
    ;Debug.Notification("_TIM: OnSpellCast()")
    Script_Quest.PlayerActivity(1, akSpell.GetFormID(), 1)
endEvent

Event OnPlayerLoadGame()
    ;Debug.Notification("_TIM: OnPlayerLoadGame()" )
    Script_Quest.Maintenance()
endEvent

;/Event OnAnimationEvent(ObjectReference akSource, string asEventName)
    if (akSource == PlayerRef) && ((asEventName ==  "MRh_SpellFire_Event") || (asEventName ==  "MLh_SpellFire_Event"))

        if(asEventName ==  "MRh_SpellFire_Event")
            Debug.Notification("MRh_SpellFire_Event")
            MRh_Casting = True
        endif

        if(asEventName ==  "MLh_SpellFire_Event")
            Debug.Notification("MLh_SpellFire_Event")
            MLh_Casting = True
        endif

        ;RegisterForSingleUpdate(1.0)
    endIf

    if ((akSource == PlayerRef) && (asEventName ==  "CastStop"))
        Debug.Notification("Spell Stopped")
    endIf
endEvent/;

;/Event OnUpdate() ; This event occurs every five seconds		
    If myQuest.GetStage() == 10
        UnregisterForUpdate() ; when we're done with it, make sure to unregister
        Debug.Trace("Got what we needed, so stop polling!")
    EndIf

    RegisterForSingleUpdate(1.0)
EndEvent/;