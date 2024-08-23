; ----------------------------------------------------------------------------
; Created by Yputi (@yputi)
; Description: Allows users to use a menu to peform (prop) animations
; Last Updated: 2024-04-27
; ----------------------------------------------------------------------------

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SetKeyDelay, 1
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force

; ----------------------------------------------------------------------------
; Hotkey of choice. Check https://www.autohotkey.com/docs/v1/KeyList.htm if
; you wish to change this
; ----------------------------------------------------------------------------
F10::

; ----------------------------------------------------------------------------
; Add your favorite (prop) animations
; ----------------------------------------------------------------------------
;
; Important:
;  - Change the reference to function "AnimMenuHandler" to "PropAnimMenuHandler"
;    if you are adding a PROP animation and not a "regular" animation
;  - Ensure that "FAVORITE(nr)" is replaced with the exact (prop) animation name
;
; Extra:
;  - You can add as many favorites as you want. Creating extra submenu's might be wise.
;
; ----------------------------------------------------------------------------
Menu, SubMenu0, Add, FAVORITE1, AnimMenuHandler
Menu, SubMenu0, Add, FAVORITE2, AnimMenuHandler
Menu, SubMenu0, Add, FAVORITE3, AnimMenuHandler
Menu, SubMenu0, Add, FAVORITE4, AnimMenuHandler
Menu, SubMenu0, Add, FAVORITE5, AnimMenuHandler
Menu, SubMenu0, Add, FAVORITE6, AnimMenuHandler
Menu, SubMenu0, Add, FAVORITE7, AnimMenuHandler
Menu, SubMenu0, Add, FAVORITE8, AnimMenuHandler
Menu, SubMenu0, Add, FAVORITE9, AnimMenuHandler
Menu, SubMenu0, Add, FAVORITE10, AnimMenuHandler

Menu, FullMenu, Add, Favorites, :SubMenu0

; ----------------------------------------------------------------------------
; Dances
; ----------------------------------------------------------------------------
Menu, SubMenu1.1, Add, DJ, AnimMenuHandler
Menu, SubMenu1.1, Add, Airsynth, AnimMenuHandler
Menu, SubMenu1.1, Add, Airguitar, AnimMenuHandler
Menu, SubMenu1.1, Add, Guitar, AnimMenuHandler
Menu, SubMenu1.1, Add, Guitar2, AnimMenuHandler
Menu, SubMenu1.1, Add, PlayPiano, AnimMenuHandler
Menu, SubMenu1.1, Add, PlayBass, AnimMenuHandler
Menu, SubMenu1, Add, Instruments, :SubMenu1.1

Menu, SubMenu1.2, Add, Bobbing, AnimMenuHandler
Menu, SubMenu1.2, Add, Bobbing2, AnimMenuHandler
Menu, SubMenu1, Add, Bobbing, :SubMenu1.2

Menu, SubMenu1.3, Add, Clown, AnimMenuHandler
Menu, SubMenu1.3, Add, Clown2, AnimMenuHandler
Menu, SubMenu1.3, Add, Clown3, AnimMenuHandler
Menu, SubMenu1.3, Add, Clown4, AnimMenuHandler
Menu, SubMenu1.3, Add, Clown5, AnimMenuHandler
Menu, SubMenu1, Add, Clown, :SubMenu1.3

Menu, SubMenu1.4, Add, Dance, AnimMenuHandler
Menu, SubMenu1.4, Add, Dance2, AnimMenuHandler
Menu, SubMenu1.4, Add, Dance3, AnimMenuHandler
Menu, SubMenu1.4, Add, Dance4, AnimMenuHandler
Menu, SubMenu1.4, Add, Dance5, AnimMenuHandler
Menu, SubMenu1.4, Add, Dance6, AnimMenuHandler
Menu, SubMenu1.4, Add, Dance7, AnimMenuHandler
Menu, SubMenu1.4, Add, Dance8, AnimMenuHandler
Menu, SubMenu1.4, Add, Dance9, AnimMenuHandler
Menu, SubMenu1.4, Add, Dance10, AnimMenuHandler
Menu, SubMenu1.4, Add, Dance11, AnimMenuHandler
Menu, SubMenu1.4, Add, Dance12, AnimMenuHandler
Menu, SubMenu1.4, Add, Dance13, AnimMenuHandler
Menu, SubMenu1.4, Add, Dance14, AnimMenuHandler
Menu, SubMenu1, Add, Dances, :SubMenu1.4

Menu, SubMenu1.5, Add, DanceCheer, AnimMenuHandler
Menu, SubMenu1.5, Add, DanceCheer2, AnimMenuHandler
Menu, SubMenu1.5, Add, DanceCheer3, AnimMenuHandler
Menu, SubMenu1, Add, Dance Cheer, :SubMenu1.5

Menu, SubMenu1.6, Add, DanceF, AnimMenuHandler
Menu, SubMenu1.6, Add, DanceF2, AnimMenuHandler
Menu, SubMenu1.6, Add, DanceF3, AnimMenuHandler
Menu, SubMenu1.6, Add, DanceF4, AnimMenuHandler
Menu, SubMenu1.6, Add, DanceF5, AnimMenuHandler
Menu, SubMenu1.6, Add, DanceF6, AnimMenuHandler
Menu, SubMenu1.6, Add, DanceF7, AnimMenuHandler
Menu, SubMenu1.6, Add, DanceF8, AnimMenuHandler
Menu, SubMenu1.6, Add, DanceF9, AnimMenuHandler
Menu, SubMenu1.6, Add, DanceF10, AnimMenuHandler
Menu, SubMenu1.6, Add, DanceF11, AnimMenuHandler
Menu, SubMenu1.6, Add, DanceF12, AnimMenuHandler
Menu, SubMenu1.6, Add, DanceF13, AnimMenuHandler
Menu, SubMenu1.6, Add, DanceF14, AnimMenuHandler
Menu, SubMenu1.6, Add, DanceF15, AnimMenuHandler
Menu, SubMenu1.6, Add, DanceF16, AnimMenuHandler
Menu, SubMenu1.6, Add, DanceF17, AnimMenuHandler
Menu, SubMenu1.6, Add, DanceF18, AnimMenuHandler
Menu, SubMenu1, Add, Dance Female, :SubMenu1.6

Menu, SubMenu1.7, Add, DanceM, AnimMenuHandler
Menu, SubMenu1.7, Add, DanceM2, AnimMenuHandler
Menu, SubMenu1.7, Add, DanceM3, AnimMenuHandler
Menu, SubMenu1.7, Add, DanceM4, AnimMenuHandler
Menu, SubMenu1.7, Add, DanceM5, AnimMenuHandler
Menu, SubMenu1.7, Add, DanceM6, AnimMenuHandler
Menu, SubMenu1.7, Add, DanceM7, AnimMenuHandler
Menu, SubMenu1.7, Add, DanceM8, AnimMenuHandler
Menu, SubMenu1.7, Add, DanceM9, AnimMenuHandler
Menu, SubMenu1.7, Add, DanceM10, AnimMenuHandler
Menu, SubMenu1.7, Add, DanceM11, AnimMenuHandler
Menu, SubMenu1.7, Add, DanceM12, AnimMenuHandler
Menu, SubMenu1, Add, Dance Male, :SubMenu1.7

Menu, SubMenu1.8, Add, DanceShy, AnimMenuHandler
Menu, SubMenu1.8, Add, DanceShy2, AnimMenuHandler
Menu, SubMenu1, Add, Dance Shy, :SubMenu1.8

Menu, SubMenu1.9, Add, DanceSide, AnimMenuHandler
Menu, SubMenu1.9, Add, DanceSide2, AnimMenuHandler
Menu, SubMenu1.9, Add, DanceSide3, AnimMenuHandler
Menu, SubMenu1, Add, Dance Side, :SubMenu1.9

Menu, SubMenu1.10, Add, DanceSilly, AnimMenuHandler
Menu, SubMenu1.10, Add, DanceSilly2, AnimMenuHandler
Menu, SubMenu1.10, Add, DanceSilly3, AnimMenuHandler
Menu, SubMenu1.10, Add, DanceSilly4, AnimMenuHandler
Menu, SubMenu1.10, Add, DanceSilly5, AnimMenuHandler
Menu, SubMenu1.10, Add, DanceSilly6, AnimMenuHandler
Menu, SubMenu1.10, Add, DanceSilly7, AnimMenuHandler
Menu, SubMenu1.10, Add, DanceSilly8, AnimMenuHandler
Menu, SubMenu1.10, Add, DanceSilly9, AnimMenuHandler
Menu, SubMenu1, Add, Dance Silly, :SubMenu1.10

Menu, SubMenu1.11, Add, DanceSlow, AnimMenuHandler
Menu, SubMenu1.11, Add, DanceSlow2, AnimMenuHandler
Menu, SubMenu1.11, Add, DanceSlow3, AnimMenuHandler
Menu, SubMenu1.11, Add, DanceSlow4, AnimMenuHandler
Menu, SubMenu1, Add, Dance Slow, :SubMenu1.11

Menu, SubMenu1.12, Add, DanceUpper, AnimMenuHandler
Menu, SubMenu1.12, Add, DanceUpper2, AnimMenuHandler
Menu, SubMenu1, Add, Dance Upper, :SubMenu1.12

Menu, SubMenu1.13, Add, FishDance, AnimMenuHandler
Menu, SubMenu1.13, Add, FishDance2, AnimMenuHandler
Menu, SubMenu1.13, Add, FishDance3, AnimMenuHandler
Menu, SubMenu1, Add, Dance Fish, :SubMenu1.13

Menu, SubMenu1.14, Add, JazzHands, AnimMenuHandler
Menu, SubMenu1.14, Add, JazzHands2, AnimMenuHandler
Menu, SubMenu1, Add, Jazz Hands, :SubMenu1.14

Menu, SubMenu1.15, Add, LapDance, AnimMenuHandler
Menu, SubMenu1.15, Add, LapDance2, AnimMenuHandler
Menu, SubMenu1.15, Add, LapDance3, AnimMenuHandler
Menu, SubMenu1.15, Add, LapDance4, AnimMenuHandler
Menu, SubMenu1, Add, Lap Dance, :SubMenu1.15

Menu, SubMenu1.16, Add, SalsaRoll, AnimMenuHandler
Menu, SubMenu1.16, Add, SalsaRoll2, AnimMenuHandler
Menu, SubMenu1, Add, Salsa Roll, :SubMenu1.16

Menu, SubMenu1.17, Add, Twerk, AnimMenuHandler
Menu, SubMenu1.17, Add, Twerk2, AnimMenuHandler
Menu, SubMenu1, Add, Twerk, :SubMenu1.17

Menu, SubMenu1.18, Add, UncleDisco, AnimMenuHandler
Menu, SubMenu1.18, Add, UncleDisco2, AnimMenuHandler
Menu, SubMenu1, Add, Uncle Disco, :SubMenu1.18

Menu, SubMenu1.19, Add, Woogie, AnimMenuHandler
Menu, SubMenu1.19, Add, Woogie2, AnimMenuHandler
Menu, SubMenu1, Add, Woogie, :SubMenu1.19

Menu, SubMenu1.20, Add, Dan - 38 - 112, AnimMenuHandlerRange
Menu, SubMenu1, Add, Dan, :SubMenu1.20

Menu, SubMenu1.22, Add, AirHump, AnimMenuHandler
Menu, SubMenu1.22, Add, Curtsy, AnimMenuHandler
Menu, SubMenu1.22, Add, PodiumDance, AnimMenuHandler
Menu, SubMenu1.22, Add, wannacme, AnimMenuHandler
Menu, SubMenu1.22, Add, rollie, AnimMenuHandler
Menu, SubMenu1.22, Add, renegade, AnimMenuHandler
Menu, SubMenu1.22, Add, billy, AnimMenuHandler
Menu, SubMenu1, Add, Other, :SubMenu1.22

Menu, FullMenu, Add, Dances, :SubMenu1

; ----------------------------------------------------------------------------
; Stances
; ----------------------------------------------------------------------------
Menu, SubMenu2.1, Add, Cop, AnimMenuHandler
Menu, SubMenu2.1, Add, Cop2, AnimMenuHandler
Menu, SubMenu2.1, Add, Cop3, AnimMenuHandler
Menu, SubMenu2.1, Add, Cop4, AnimMenuHandler
Menu, SubMenu2.1, Add, Cop5, AnimMenuHandler
Menu, SubMenu2, Add, Cop, :SubMenu2.1

Menu, SubMenu2.2, Add, CrossArms, AnimMenuHandler
Menu, SubMenu2.2, Add, CrossArms2, AnimMenuHandler
Menu, SubMenu2.2, Add, CrossArms3, AnimMenuHandler
Menu, SubMenu2.2, Add, CrossArms4, AnimMenuHandler
Menu, SubMenu2.2, Add, CrossArms5, AnimMenuHandler
Menu, SubMenu2.2, Add, CrossArms6, AnimMenuHandler
Menu, SubMenu2.2, Add, CrossArmsSide, AnimMenuHandler
Menu, SubMenu2, Add, Cross Arms, :SubMenu2.2

Menu, SubMenu2.3, Add, Fit, AnimMenuHandler
Menu, SubMenu2.3, Add, Fit2, AnimMenuHandler
Menu, SubMenu2, Add, Fit, :SubMenu2.3

Menu, SubMenu2.4, Add, FoldArms, AnimMenuHandler
Menu, SubMenu2.4, Add, FoldArms2, AnimMenuHandler
Menu, SubMenu2.4, Add, FoldArms3, AnimMenuHandler
Menu, SubMenu2.4, Add, FoldArms4, AnimMenuHandler
Menu, SubMenu2.4, Add, FoldArms5, AnimMenuHandler
Menu, SubMenu2, Add, Fold Arms, :SubMenu2.4

Menu, SubMenu2.5, Add, Gang, AnimMenuHandler
Menu, SubMenu2.5, Add, Gang2, AnimMenuHandler
Menu, SubMenu2, Add, Gang, :SubMenu2.5

Menu, SubMenu2.6, Add, Idle, AnimMenuHandler
Menu, SubMenu2.6, Add, Idle2, AnimMenuHandler
Menu, SubMenu2.6, Add, Idle3, AnimMenuHandler
Menu, SubMenu2.6, Add, Idle4, AnimMenuHandler
Menu, SubMenu2.6, Add, Idle5, AnimMenuHandler
Menu, SubMenu2.6, Add, Idle6, AnimMenuHandler
Menu, SubMenu2.6, Add, Idle7, AnimMenuHandler
Menu, SubMenu2.6, Add, Idle8, AnimMenuHandler
Menu, SubMenu2.6, Add, Idle9, AnimMenuHandler
Menu, SubMenu2.6, Add, Idle10, AnimMenuHandler
Menu, SubMenu2.6, Add, Idle11, AnimMenuHandler
Menu, SubMenu2.6, Add, Idle12, AnimMenuHandler
Menu, SubMenu2.6, Add, IdleDrunk, AnimMenuHandler
Menu, SubMenu2.6, Add, IdleDrunk2, AnimMenuHandler
Menu, SubMenu2.6, Add, IdleDrunk3, AnimMenuHandler
Menu, SubMenu2, Add, Idle, :SubMenu2.6

Menu, SubMenu2.7, Add, Impatient, AnimMenuHandler
Menu, SubMenu2.7, Add, Impatient2, AnimMenuHandler
Menu, SubMenu2, Add, Impatient, :SubMenu2.7

Menu, SubMenu2.8.1, Add, Lean, AnimMenuHandler
Menu, SubMenu2.8.1, Add, Lean2, AnimMenuHandler
Menu, SubMenu2.8.1, Add, Lean3, AnimMenuHandler
Menu, SubMenu2.8.1, Add, Lean4, AnimMenuHandler
Menu, SubMenu2.8.1, Add, Lean5, AnimMenuHandler
Menu, SubMenu2.8.1, Add, Lean6, AnimMenuHandler
Menu, SubMenu2.8.1, Add, Lean7, AnimMenuHandler
Menu, SubMenu2.8.1, Add, Lean8, AnimMenuHandler
Menu, SubMenu2.8.1, Add, Lean9, AnimMenuHandler
Menu, SubMenu2.8.1, Add, Lean10, AnimMenuHandler
Menu, SubMenu2.8, Add, Lean, :SubMenu2.8.1

Menu, SubMenu2.8.2, Add, LeanBar, AnimMenuHandler
Menu, SubMenu2.8.2, Add, LeanBar2, AnimMenuHandler
Menu, SubMenu2.8.2, Add, LeanBar3, AnimMenuHandler
Menu, SubMenu2.8, Add, Lean Bar, :SubMenu2.8.2

Menu, SubMenu2.8.3, Add, LeanHigh, AnimMenuHandler
Menu, SubMenu2.8.3, Add, LeanHigh2, AnimMenuHandler
Menu, SubMenu2.8, Add, Lean High, :SubMenu2.8.3

Menu, SubMenu2.8.4, Add, LeanRail, AnimMenuHandler
Menu, SubMenu2.8.4, Add, LeanRail2, AnimMenuHandler
Menu, SubMenu2.8.4, Add, LeanRail3, AnimMenuHandler
Menu, SubMenu2.8, Add, Lean Rail, :SubMenu2.8.4

Menu, SubMenu2.8.5, Add, LeanSide, AnimMenuHandler
Menu, SubMenu2.8.5, Add, LeanSide2, AnimMenuHandler
Menu, SubMenu2.8.5, Add, LeanSide3, AnimMenuHandler
Menu, SubMenu2.8.5, Add, LeanSide4, AnimMenuHandler
Menu, SubMenu2.8.5, Add, LeanSide5, AnimMenuHandler
Menu, SubMenu2.8.5, Add, LeanSide6, AnimMenuHandler
Menu, SubMenu2.8, Add, Lean Side, :SubMenu2.8.5

Menu, SubMenu2.8.6, Add, LeanTable, AnimMenuHandler
Menu, SubMenu2.8.6, Add, LeanTable2, AnimMenuHandler
Menu, SubMenu2.8, Add, Lean table, :SubMenu2.8.6

Menu, SubMenu2.8.7, Add, LeanPhone, AnimMenuHandler
Menu, SubMenu2.8.7, Add, LeanPhone2, AnimMenuHandler
Menu, SubMenu2.8, Add, Lean phone, :SubMenu2.8.7

Menu, SubMenu2.8.8, Add, LeanFlirt, AnimMenuHandler
Menu, SubMenu2.8.8, Add, LeanSleepy, AnimMenuHandler
Menu, SubMenu2.8.8, Add, LeanStretch, AnimMenuHandler
Menu, SubMenu2.8, Add, Other, :SubMenu2.8.8
Menu, SubMenu2, Add, Lean, :SubMenu2.8

Menu, SubMenu2.9, Add, Listen, AnimMenuHandler
Menu, SubMenu2.9, Add, Listen2, AnimMenuHandler
Menu, SubMenu2.9, Add, Listen3, AnimMenuHandler
Menu, SubMenu2.9, Add, Listen4, AnimMenuHandler
Menu, SubMenu2.9, Add, Listen5, AnimMenuHandler
Menu, SubMenu2, Add, Listen, :SubMenu2.9

Menu, SubMenu2.10, Add, NosePick, AnimMenuHandler
Menu, SubMenu2.10, Add, NosePick2, AnimMenuHandler
Menu, SubMenu2, Add, Nose Pick, :SubMenu2.10

Menu, SubMenu2.11, Add, Sexy, AnimMenuHandler
Menu, SubMenu2.11, Add, Sexy2, AnimMenuHandler
Menu, SubMenu2.11, Add, Sexy3, AnimMenuHandler
Menu, SubMenu2, Add, Sexy, :SubMenu2.11

Menu, SubMenu2.11.1, Add, Shy, AnimMenuHandler
Menu, SubMenu2.11.1, Add, Shy2, AnimMenuHandler
Menu, SubMenu2.11.1, Add, Shy3, AnimMenuHandler
Menu, SubMenu2, Add, Shy, :SubMenu2.11.1

Menu, SubMenu2.12, Add, Smoke, AnimMenuHandler
Menu, SubMenu2.12, Add, SmokeFlick, AnimMenuHandler
Menu, SubMenu2.12, Add, SmokeFlick2, AnimMenuHandler
Menu, SubMenu2, Add, Smoke, :SubMenu2.12

Menu, SubMenu2.13, Add, StandStraight, AnimMenuHandler
Menu, SubMenu2.13, Add, StandStraight2, AnimMenuHandler
Menu, SubMenu2.13, Add, StandStraight3, AnimMenuHandler
Menu, SubMenu2.13, Add, StandStraight4, AnimMenuHandler
Menu, SubMenu2, Add, Stand Straight, :SubMenu2.13

Menu, SubMenu2.14, Add, Statue2, AnimMenuHandler
Menu, SubMenu2.14, Add, Statue3, AnimMenuHandler
Menu, SubMenu2, Add, Statue, :SubMenu2.14

Menu, SubMenu2.15, Add, Superhero, AnimMenuHandler
Menu, SubMenu2.15, Add, Superhero2, AnimMenuHandler
Menu, SubMenu2.15, Add, Spiderman, AnimMenuHandler
Menu, SubMenu2, Add, Superhero, :SubMenu2.15

Menu, SubMenu2.16, Add, T, AnimMenuHandler
Menu, SubMenu2.16, Add, T2, AnimMenuHandler
Menu, SubMenu2, Add, T-Poses, :SubMenu2.16

Menu, SubMenu2.17, Add, Think, AnimMenuHandler
Menu, SubMenu2.17, Add, Think2, AnimMenuHandler
Menu, SubMenu2.17, Add, Think3, AnimMenuHandler
Menu, SubMenu2.17, Add, Think4, AnimMenuHandler
Menu, SubMenu2.17, Add, Think5, AnimMenuHandler
Menu, SubMenu2, Add, Think, :SubMenu2.17

Menu, SubMenu2.18, Add, Twitchy, AnimMenuHandler
Menu, SubMenu2.18, Add, Twitchy2, AnimMenuHandler
Menu, SubMenu2.18, Add, Twitchy3, AnimMenuHandler
Menu, SubMenu2.18, Add, Twitchy4, AnimMenuHandler
Menu, SubMenu2, Add, Twitchy, :SubMenu2.18

Menu, SubMenu2.19, Add, Wait, AnimMenuHandler
Menu, SubMenu2.19, Add, Wait2, AnimMenuHandler
Menu, SubMenu2.19, Add, Wait3, AnimMenuHandler
Menu, SubMenu2.19, Add, Wait4, AnimMenuHandler
Menu, SubMenu2.19, Add, Wait5, AnimMenuHandler
Menu, SubMenu2.19, Add, Wait6, AnimMenuHandler
Menu, SubMenu2.19, Add, Wait7, AnimMenuHandler
Menu, SubMenu2.19, Add, Wait8, AnimMenuHandler
Menu, SubMenu2.19, Add, Wait9, AnimMenuHandler
Menu, SubMenu2.19, Add, Wait10, AnimMenuHandler
Menu, SubMenu2.19, Add, Wait11, AnimMenuHandler
Menu, SubMenu2.19, Add, Wait12, AnimMenuHandler
Menu, SubMenu2.19, Add, Wait13, AnimMenuHandler
Menu, SubMenu2.19, Add, Wait14, AnimMenuHandler
Menu, SubMenu2.19, Add, Wait15, AnimMenuHandler
Menu, SubMenu2.19, Add, Wait16, AnimMenuHandler
Menu, SubMenu2, Add, Wait, :SubMenu2.19

Menu, SubMenu2.20, Add, Watch, AnimMenuHandler
Menu, SubMenu2.20, Add, Watch2, AnimMenuHandler
Menu, SubMenu2.20, Add, WatchStrip, AnimMenuHandler
Menu, SubMenu2, Add, Watch, :SubMenu2.20

Menu, SubMenu2.21, Add, AirPlane, AnimMenuHandler
Menu, SubMenu2.21, Add, Bark, AnimMenuHandler
Menu, SubMenu2.21, Add, BarTender, AnimMenuHandler
Menu, SubMenu2.21, Add, CheckOut, AnimMenuHandler
Menu, SubMenu2.21, Add, FallAsleep, AnimMenuHandler
Menu, SubMenu2.21, Add, Fidget, AnimMenuHandler
Menu, SubMenu2.21, Add, Hooker, AnimMenuHandler
Menu, SubMenu2.21, Add, Ledge, AnimMenuHandler
Menu, SubMenu2.21, Add, LookAround, AnimMenuHandler
Menu, SubMenu2.21, Add, Metal, AnimMenuHandler
Menu, SubMenu2.21, Add, Namaste, AnimMenuHandler
Menu, SubMenu2.21, Add, Pee, AnimMenuHandler
Menu, SubMenu2.21, Add, Peek, AnimMenuHandler
Menu, SubMenu2.21, Add, Reaching, AnimMenuHandler
Menu, SubMenu2.21, Add, StickUp, AnimMenuHandler
Menu, SubMenu2.21, Add, Stumble, AnimMenuHandler
Menu, SubMenu2.21, Add, Stunned, AnimMenuHandler
Menu, SubMenu2.21, Add, Threaten, AnimMenuHandler
Menu, SubMenu2.21, Add, Warming, AnimMenuHandler
Menu, SubMenu2.21, Add, WashFace, AnimMenuHandler
Menu, SubMenu2.21, Add, Wasted, AnimMenuHandler
Menu, SubMenu2.21, Add, Pockets, AnimMenuHandler
Menu, SubMenu2, Add, Other, :SubMenu2.21

Menu, FullMenu, Add, Stances, :SubMenu2

; ----------------------------------------------------------------------------
; Sit/Crouch/Kneel
; ----------------------------------------------------------------------------
Menu, SubMenu3.1.1, Add, Sit, AnimMenuHandler
Menu, SubMenu3.1.1, Add, Sit2, AnimMenuHandler
Menu, SubMenu3.1.1, Add, Sit3, AnimMenuHandler
Menu, SubMenu3.1.1, Add, Sit4, AnimMenuHandler
Menu, SubMenu3.1.1, Add, Sit5, AnimMenuHandler
Menu, SubMenu3.1.1, Add, Sit6, AnimMenuHandler
Menu, SubMenu3.1.1, Add, Sit7, AnimMenuHandler
Menu, SubMenu3.1.1, Add, Sit8, AnimMenuHandler
Menu, SubMenu3.1.1, Add, Sit9, AnimMenuHandler
Menu, SubMenu3.1.1, Add, Sit10, AnimMenuHandler
Menu, SubMenu3.1.1, Add, Sit11, AnimMenuHandler
Menu, SubMenu3.1.1, Add, Sit12, AnimMenuHandler
Menu, SubMenu3.1.1, Add, SitDrunk, AnimMenuHandler
Menu, SubMenu3.1.1, Add, SitFloor, AnimMenuHandler
Menu, SubMenu3.1.1, Add, SitFloor2, AnimMenuHandler
Menu, SubMenu3.1.1, Add, SitGround, AnimMenuHandler
Menu, SubMenu3.1.1, Add, SitSad, AnimMenuHandler
Menu, SubMenu3.1.1, Add, SitScared, AnimMenuHandler
Menu, SubMenu3.1.1, Add, SitScared2, AnimMenuHandler
Menu, SubMenu3.1.1, Add, SitScared3, AnimMenuHandler
Menu, SubMenu3.1, Add, Sit, :SubMenu3.1.1
Menu, SubMenu3.1, Add, Meditate, AnimMenuHandler
Menu, SubMenu3.1, Add, Meditate2, AnimMenuHandler
Menu, SubMenu3.1, Add, Meditate3, AnimMenuHandler
Menu, SubMenu3.1, Add, Praise, AnimMenuHandler
Menu, SubMenu3.1, Add, Praise2, AnimMenuHandler
Menu, SubMenu3, Add, Sit on ground, :SubMenu3.1

Menu, SubMenu3.2.1, Add, Bench, AnimMenuHandler
Menu, SubMenu3.2.1, Add, Bench2, AnimMenuHandler
Menu, SubMenu3.2.1, Add, Bench3, AnimMenuHandler
Menu, SubMenu3.2.1, Add, BenchSmoke, AnimMenuHandler
Menu, SubMenu3.2.1, Add, TalkOnBench, AnimMenuHandler
Menu, SubMenu3.2, Add, Bench, :SubMenu3.2.1
Menu, SubMenu3.2, Add, Praise2, AnimMenuHandler
Menu, SubMenu3.2, Add, PimpSit, AnimMenuHandler
Menu, SubMenu3.2, Add, SitBonnet, AnimMenuHandler

Menu, SubMenu3.2.2, Add, SitChair, AnimMenuHandler
Menu, SubMenu3.2.2, Add, SitChair2, AnimMenuHandler
Menu, SubMenu3.2.2, Add, SitChair3, AnimMenuHandler
Menu, SubMenu3.2.2, Add, SitChair4, AnimMenuHandler
Menu, SubMenu3.2.2, Add, SitChair5, AnimMenuHandler
Menu, SubMenu3.2.2, Add, SitChair6, AnimMenuHandler
Menu, SubMenu3.2.2, Add, SitChairSide, AnimMenuHandler
Menu, SubMenu3.2, Add, Chair, :SubMenu3.2.2

Menu, SubMenu3.2, Add, SitLean, AnimMenuHandler
Menu, SubMenu3.2, Add, SitStairs, AnimMenuHandler
Menu, SubMenu3.2, Add, SitWorried, AnimMenuHandler
Menu, SubMenu3, Add, Sit on object, :SubMenu3.2

Menu, SubMenu3.3, Add, Crouch, AnimMenuHandler
Menu, SubMenu3.3, Add, Crouch2, AnimMenuHandler
Menu, SubMenu3, Add, Crouch, :SubMenu3.3

Menu, SubMenu3.4, Add, Kneel, AnimMenuHandler
Menu, SubMenu3.4, Add, Kneel2, AnimMenuHandler
Menu, SubMenu3.4, Add, Kneel3, AnimMenuHandler
Menu, SubMenu3.4, Add, Medic, AnimMenuHandler
Menu, SubMenu3, Add, Kneel, :SubMenu3.4

Menu, SubMenu3, Add, PickFromGround, AnimMenuHandler

Menu, FullMenu, Add, Sit/Crouch/Kneel, :SubMenu3

; ----------------------------------------------------------------------------
; Laydown
; ----------------------------------------------------------------------------
Menu, SubMenu4.1, Add, CloudGaze, AnimMenuHandler
Menu, SubMenu4.1, Add, CloudGaze2, AnimMenuHandler
Menu, SubMenu4, Add, Cloud Gaze, :SubMenu4.1

Menu, SubMenu4.2, Add, Down, AnimMenuHandler
Menu, SubMenu4.2, Add, Down2, AnimMenuHandler
Menu, SubMenu4.2, Add, Down3, AnimMenuHandler
Menu, SubMenu4.2, Add, Down4, AnimMenuHandler
Menu, SubMenu4.2, Add, Down5, AnimMenuHandler
Menu, SubMenu4, Add, Down, :SubMenu4.2

Menu, SubMenu4.3, Add, PassOut, AnimMenuHandler
Menu, SubMenu4.3, Add, PassOut2, AnimMenuHandler
Menu, SubMenu4.3, Add, PassOut3, AnimMenuHandler
Menu, SubMenu4.3, Add, PassOut4, AnimMenuHandler
Menu, SubMenu4.3, Add, PassOut5, AnimMenuHandler
Menu, SubMenu4, Add, Pass out, :SubMenu4.3

Menu, SubMenu4.4, Add, Slumped, AnimMenuHandler
Menu, SubMenu4.4, Add, Slumped2, AnimMenuHandler
Menu, SubMenu4, Add, Slumped, :SubMenu4.4

Menu, SubMenu4.5, Add, SunBathe, AnimMenuHandler
Menu, SubMenu4.5, Add, SunBathe2, AnimMenuHandler
Menu, SubMenu4.5, Add, SunBathe3, AnimMenuHandler
Menu, SubMenu4, Add, Sun bathing, :SubMenu4.5

Menu, SubMenu4.6, Add, Chill, AnimMenuHandler
Menu, SubMenu4.6, Add, LayDown, AnimMenuHandler
Menu, SubMenu4.6, Add, LayingInPain, AnimMenuHandler
Menu, SubMenu4.6, Add, Prone, AnimMenuHandler
Menu, SubMenu4.6, Add, Sleep, AnimMenuHandler
Menu, SubMenu4, Add, Other, :SubMenu4.6

Menu, FullMenu, Add, Laydown, :SubMenu4

; ----------------------------------------------------------------------------
; Clothing
; ----------------------------------------------------------------------------
Menu, SubMenu5.1.1, Add, Arrest, AnimMenuHandler
Menu, SubMenu5.1.1, Add, HandsUp, AnimMenuHandler
Menu, SubMenu5.1, Add, Standing, :SubMenu5.1.1

Menu, SubMenu5.1.2, Add, Down2, AnimMenuHandler
Menu, SubMenu5.1.2, Add, Down3, AnimMenuHandler
Menu, SubMenu5.1.2, Add, Down5, AnimMenuHandler
Menu, SubMenu5.1, Add, On knees, :SubMenu5.1.2
Menu, SubMenu5, Add, Allow detain/arrest, :SubMenu5.1

Menu, SubMenu5.2, Add, Surrender, AnimMenuHandler
Menu, SubMenu5.2, Add, HandsUp2, AnimMenuHandler
Menu, SubMenu5, Add, Surrender, :SubMenu5.2

Menu, SubMenu5.3, Add, Cower, AnimMenuHandler
Menu, SubMenu5.3, Add, Down4, AnimMenuHandler
Menu, SubMenu5.3, Add, Hostage, AnimMenuHandler

Menu, SubMenu5.3.1, Add, Frightened, AnimMenuHandler
Menu, SubMenu5.3.1, Add, Frightened2, AnimMenuHandler
Menu, SubMenu5.3.1, Add, Frightened3, AnimMenuHandler
Menu, SubMenu5.3.1, Add, Frightened4, AnimMenuHandler
Menu, SubMenu5.3, Add, Frightened, :SubMenu5.3.1
Menu, SubMenu5, Add, Scared, :SubMenu5.3
Menu, SubMenu5, Add, UnCuff, AnimMenuHandler
Menu, FullMenu, Add, Hostage/Detaining, :SubMenu5

Menu, SubMenu6, Add, Adjust, AnimMenuHandler
Menu, SubMenu6, Add, AdjustTie, AnimMenuHandler
Menu, SubMenu6, Add, DustOff, AnimMenuHandler
Menu, SubMenu6, Add, ShakeOff, AnimMenuHandler

Menu, SubMenu6.1, Add, TryClothes, AnimMenuHandler
Menu, SubMenu6.1, Add, TryClothes2, AnimMenuHandler
Menu, SubMenu6.1, Add, TryClothes3, AnimMenuHandler
Menu, SubMenu6, Add, Try Clothes, :SubMenu6.1

Menu, FullMenu, Add, Clothing, :SubMenu6

; ----------------------------------------------------------------------------
; Emotions
; ----------------------------------------------------------------------------
Menu, SubMenu7, Add, Angry, AnimMenuHandler

Menu, SubMenu7.1, Add, Argue, AnimMenuHandler
Menu, SubMenu7.1, Add, Argue2, AnimMenuHandler
Menu, SubMenu7, Add, Argue, :SubMenu7.1

Menu, SubMenu7.2, Add, Depressed, AnimMenuHandler
Menu, SubMenu7.2, Add, Depressed2, AnimMenuHandler
Menu, SubMenu7, Add, Depressed, :SubMenu7.2

Menu, SubMenu7, Add, Distressed, AnimMenuHandler

Menu, SubMenu7.3, Add, FacePalm, AnimMenuHandler
Menu, SubMenu7.3, Add, FacePalm2, AnimMenuHandler
Menu, SubMenu7.3, Add, FacePalm3, AnimMenuHandler
Menu, SubMenu7.3, Add, FacePalm4, AnimMenuHandler
Menu, SubMenu7.3, Add, Palm, AnimMenuHandler
Menu, SubMenu7, Add, Face palming, :SubMenu7.3

Menu, SubMenu7.4, Add, Frightened, AnimMenuHandler
Menu, SubMenu7.4, Add, Frightened2, AnimMenuHandler
Menu, SubMenu7.4, Add, Frightened3, AnimMenuHandler
Menu, SubMenu7.4, Add, Frightened4, AnimMenuHandler
Menu, SubMenu7, Add, Frightened, :SubMenu7.4

Menu, SubMenu7.5, Add, Nervous, AnimMenuHandler
Menu, SubMenu7.5, Add, Nervous2, AnimMenuHandler
Menu, SubMenu7.5, Add, Nervous3, AnimMenuHandler
Menu, SubMenu7, Add, Nervous, :SubMenu7.5

Menu, SubMenu7.6, Add, Scared, AnimMenuHandler
Menu, SubMenu7.6, Add, Scared2, AnimMenuHandler
Menu, SubMenu7.6, Add, Scared3, AnimMenuHandler
Menu, SubMenu7.6, Add, SitScared, AnimMenuHandler
Menu, SubMenu7.6, Add, SitScared2, AnimMenuHandler
Menu, SubMenu7.6, Add, SitScared3, AnimMenuHandler
Menu, SubMenu7, Add, Scared, :SubMenu7.6

Menu, SubMenu7.7, Add, Shy, AnimMenuHandler
Menu, SubMenu7.7, Add, Shy2, AnimMenuHandler
Menu, SubMenu7.7, Add, Shy3, AnimMenuHandler
Menu, SubMenu7, Add, Shy, :SubMenu7.7

Menu, SubMenu7.8, Add, Worried, AnimMenuHandler
Menu, SubMenu7.8, Add, SitWorried, AnimMenuHandler
Menu, SubMenu7, Add, Worried, :SubMenu7.8

Menu, FullMenu, Add, Emotions, :SubMenu7

; ----------------------------------------------------------------------------
; Fight
; ----------------------------------------------------------------------------
Menu, SubMenu8, Add, Beast, AnimMenuHandler

Menu, SubMenu8.1, Add, Boxing, AnimMenuHandler
Menu, SubMenu8.1, Add, Boxing2, AnimMenuHandler
Menu, SubMenu8, Add, Boxing, :SubMenu8.1

Menu, SubMenu8.2, Add, BringItOn, AnimMenuHandler
Menu, SubMenu8.2, Add, FightMe, AnimMenuHandler
Menu, SubMenu8.2, Add, FightMe2, AnimMenuHandler
Menu, SubMenu8.2, Add, KnuckleCrunch, AnimMenuHandler
Menu, SubMenu8.2, Add, KnuckleCrunch2, AnimMenuHandler
Menu, SubMenu8, Add, Challenge someone, :SubMenu8.2

Menu, SubMenu8.3, Add, Headbutt, AnimMenuHandler
Menu, SubMenu8.3, Add, Punching, AnimMenuHandler
Menu, SubMenu8.3, Add, Slap, AnimMenuHandler
Menu, SubMenu8, Add, Attacks, :SubMenu8.3

Menu, FullMenu, Add, Fight, :SubMenu8

; ----------------------------------------------------------------------------
; Goofy
; ----------------------------------------------------------------------------
Menu, SubMenu9.1, Add, Bark, AnimMenuHandler
Menu, SubMenu9.1, Add, Bird, AnimMenuHandler
Menu, SubMenu9.1, Add, Rabbit, AnimMenuHandler
Menu, SubMenu9, Add, Animals, :SubMenu9.1

Menu, SubMenu9.2, Add, Freakout, AnimMenuHandler
Menu, SubMenu9.2, Add, Freakout2, AnimMenuHandler
Menu, SubMenu9, Add, Freakout, :SubMenu9.2

Menu, SubMenu9, Add, GrabCrotch, AnimMenuHandler

Menu, SubMenu9.3, Add, Loco, AnimMenuHandler
Menu, SubMenu9.3, Add, Loco2, AnimMenuHandler
Menu, SubMenu9, Add, Loco, :SubMenu9.3

Menu, SubMenu9.4, Add, LOL, AnimMenuHandler
Menu, SubMenu9.4, Add, LOL2, AnimMenuHandler
Menu, SubMenu9, Add, LOL, :SubMenu9.4

Menu, SubMenu9.5, Add, MindControl, AnimMenuHandler
Menu, SubMenu9.5, Add, MindControl2, AnimMenuHandler
Menu, SubMenu9, Add, Mind control, :SubMenu9.5

Menu, SubMenu9, Add, PickButt, AnimMenuHandler
Menu, SubMenu9, Add, Wank, AnimMenuHandler

Menu, FullMenu, Add, Goofy, :SubMenu9

; ----------------------------------------------------------------------------
; Interaction
; ----------------------------------------------------------------------------
Menu, SubMenu10.1, Add, Bow, AnimMenuHandler
Menu, SubMenu10.1, Add, Bow2, AnimMenuHandler
Menu, SubMenu10, Add, Bow, :SubMenu10.1

Menu, SubMenu10.2, Add, BroLove, AnimMenuHandler
Menu, SubMenu10.2, Add, BroLove2, AnimMenuHandler
Menu, SubMenu10, Add, Bro love, :SubMenu10.2

Menu, SubMenu10.3, Add, Damn, AnimMenuHandler
Menu, SubMenu10.3, Add, Damn2, AnimMenuHandler
Menu, SubMenu10.3, Add, Damn3, AnimMenuHandler
Menu, SubMenu10, Add, Damn, :SubMenu10.3

Menu, SubMenu10.4, Add, Handshake, AnimMenuHandler
Menu, SubMenu10.4, Add, Handshake2, AnimMenuHandler
Menu, SubMenu10, Add, Handshakes, :SubMenu10.4

Menu, SubMenu10.5, Add, Hug, AnimMenuHandler
Menu, SubMenu10.5, Add, Hug2, AnimMenuHandler
Menu, SubMenu10.5, Add, Hug3, AnimMenuHandler
Menu, SubMenu10, Add, Hugs, :SubMenu10.5

Menu, SubMenu10.6, Add, Knock, AnimMenuHandler
Menu, SubMenu10.6, Add, Knock2, AnimMenuHandler
Menu, SubMenu10, Add, Knocking, :SubMenu10.6

Menu, SubMenu10.7, Add, MindBlown, AnimMenuHandler
Menu, SubMenu10.7, Add, MindBlown2, AnimMenuHandler
Menu, SubMenu10, Add, Mind blown, :SubMenu10.7

Menu, SubMenu10.8, Add, No, AnimMenuHandler
Menu, SubMenu10.8, Add, No2, AnimMenuHandler
Menu, SubMenu10.8, Add, NoWay, AnimMenuHandler
Menu, SubMenu10.8, Add, NoWay2, AnimMenuHandler
Menu, SubMenu10.8, Add, NoWay3, AnimMenuHandler
Menu, SubMenu10, Add, No, :SubMenu10.8

Menu, SubMenu10.9, Add, Ok, AnimMenuHandler
Menu, SubMenu10.9, Add, Ok2, AnimMenuHandler
Menu, SubMenu10.9, Add, Yeah, AnimMenuHandler
Menu, SubMenu10, Add, Ok, :SubMenu10.9

Menu, SubMenu10.10, Add, Photo, AnimMenuHandler
Menu, SubMenu10.10, Add, Photo2, AnimMenuHandler
Menu, SubMenu10, Add, Photo, :SubMenu10.10

Menu, SubMenu10.11, Add, Point, AnimMenuHandler
Menu, SubMenu10.11, Add, PointDown, AnimMenuHandler
Menu, SubMenu10.11, Add, PointRight, AnimMenuHandler
Menu, SubMenu10, Add, Pointing, :SubMenu10.11

Menu, SubMenu10.12, Add, Salute, AnimMenuHandler
Menu, SubMenu10.12, Add, Salute2, AnimMenuHandler
Menu, SubMenu10.12, Add, Salute3, AnimMenuHandler
Menu, SubMenu10.12, Add, Salute4, AnimMenuHandler
Menu, SubMenu10, Add, Salute, :SubMenu10.12

Menu, SubMenu10.13, Add, Shrug, AnimMenuHandler
Menu, SubMenu10.13, Add, Shrug2, AnimMenuHandler
Menu, SubMenu10, Add, Shrug, :SubMenu10.13

Menu, SubMenu10.14, Add, Smell, AnimMenuHandler
Menu, SubMenu10.14, Add, Stink, AnimMenuHandler
Menu, SubMenu10.14, Add, Stink2, AnimMenuHandler
Menu, SubMenu10, Add, Smell/Stink, :SubMenu10.14

Menu, SubMenu10.15, Add, ThumbsDown, AnimMenuHandler
Menu, SubMenu10.15, Add, ThumbsDown2, AnimMenuHandler
Menu, SubMenu10, Add, Thumbs down, :SubMenu10.15

Menu, SubMenu10.16, Add, ThumbsUp, AnimMenuHandler
Menu, SubMenu10.16, Add, ThumbsUp2, AnimMenuHandler
Menu, SubMenu10.16, Add, ThumbsUp3, AnimMenuHandler
Menu, SubMenu10.16, Add, ThumbsUp4, AnimMenuHandler
Menu, SubMenu10.16, Add, ThumbsUp5, AnimMenuHandler
Menu, SubMenu10.16, Add, ThumbsUp6, AnimMenuHandler
Menu, SubMenu10, Add, Thumbs up, :SubMenu10.16

Menu, SubMenu10.17, Add, Wave, AnimMenuHandler
Menu, SubMenu10.17, Add, Wave2, AnimMenuHandler
Menu, SubMenu10.17, Add, Wave3, AnimMenuHandler
Menu, SubMenu10.17, Add, Wave4, AnimMenuHandler
Menu, SubMenu10.17, Add, Wave5, AnimMenuHandler
Menu, SubMenu10.17, Add, Wave6, AnimMenuHandler
Menu, SubMenu10.17, Add, Wave7, AnimMenuHandler
Menu, SubMenu10.17, Add, Wave8, AnimMenuHandler
Menu, SubMenu10.17, Add, Wave9, AnimMenuHandler
Menu, SubMenu10.17, Add, Wave10, AnimMenuHandler
Menu, SubMenu10.17, Add, Wave11, AnimMenuHandler
Menu, SubMenu10.17, Add, Wave12, AnimMenuHandler
Menu, SubMenu10.17, Add, Wave13, AnimMenuHandler
Menu, SubMenu10.17, Add, Wave14, AnimMenuHandler
Menu, SubMenu10, Add, Wave, :SubMenu10.17

Menu, SubMenu10.18, Add, What, AnimMenuHandler
Menu, SubMenu10.18, Add, What2, AnimMenuHandler
Menu, SubMenu10, Add, What, :SubMenu10.18

Menu, SubMenu10.19, Add, Whistle, AnimMenuHandler
Menu, SubMenu10.19, Add, Whistle2, AnimMenuHandler
Menu, SubMenu10.19, Add, Taxi, AnimMenuHandler
Menu, SubMenu10, Add, Whistles, :SubMenu10.19

Menu, SubMenu10.20, Add, BlowKiss, AnimMenuHandler
Menu, SubMenu10.20, Add, Boi, AnimMenuHandler
Menu, SubMenu10.20, Add, ComeHere, AnimMenuHandler
Menu, SubMenu10.20, Add, Greeting, AnimMenuHandler
Menu, SubMenu10.20, Add, Inspect, AnimMenuHandler
Menu, SubMenu10.20, Add, KeyFob, AnimMenuHandler
Menu, SubMenu10.20, Add, Lift, AnimMenuHandler
Menu, SubMenu10.20, Add, Me, AnimMenuHandler
Menu, SubMenu10.20, Add, Petting, AnimMenuHandler
Menu, SubMenu10.20, Add, PickUp, AnimMenuHandler
Menu, SubMenu10.20, Add, PullOver, AnimMenuHandler
Menu, SubMenu10.20, Add, ThankYou, AnimMenuHandler
Menu, SubMenu10.20, Add, WashFace, AnimMenuHandler
Menu, SubMenu10, Add, Other, :SubMenu10.20

Menu, FullMenu, Add, Interaction, :SubMenu10

; ----------------------------------------------------------------------------
; Stripclub
; ----------------------------------------------------------------------------
Menu, SubMenu11.1, Add, CashRain, AnimMenuHandler
Menu, SubMenu11.1, Add, CashRain2, AnimMenuHandler
Menu, SubMenu11, Add, Cash rain, :SubMenu11.1

Menu, SubMenu11.2, Add, FingerKiss, AnimMenuHandler
Menu, SubMenu11.2, Add, FingerKiss2, AnimMenuHandler
Menu, SubMenu11, Add, Finger kiss, :SubMenu11.2

Menu, SubMenu11.3, Add, Lapdance, AnimMenuHandler
Menu, SubMenu11.3, Add, Lapdance2, AnimMenuHandler
Menu, SubMenu11.3, Add, Lapdance3, AnimMenuHandler
Menu, SubMenu11.3, Add, Lapdance4, AnimMenuHandler
Menu, SubMenu11, Add, Lapdance, :SubMenu11.3

Menu, SubMenu11.4, Add, Twerk, AnimMenuHandler
Menu, SubMenu11.4, Add, Twerk2, AnimMenuHandler
Menu, SubMenu11, Add, Twerk, :SubMenu11.4

Menu, SubMenu11, Add, Hooker, AnimMenuHandler
Menu, SubMenu11, Add, WatchStrip, AnimMenuHandler

Menu, FullMenu, Add, Stripclub, :SubMenu11

; ----------------------------------------------------------------------------
; Cheer/Celebrate
; ----------------------------------------------------------------------------
Menu, SubMenu12.1, Add, Cheer, AnimMenuHandler
Menu, SubMenu12.1, Add, Cheer2, AnimMenuHandler
Menu, SubMenu12.1, Add, Cheer3, AnimMenuHandler
Menu, SubMenu12.1, Add, DanceCheer, AnimMenuHandler
Menu, SubMenu12.1, Add, DanceCheer2, AnimMenuHandler
Menu, SubMenu12.1, Add, DanceCheer3, AnimMenuHandler
Menu, SubMenu12.1, Add, RallyCheer, AnimMenuHandler
Menu, SubMenu12, Add, (Dance) Cheer, :SubMenu12.1

Menu, SubMenu12.2, Add, Slide, AnimMenuHandler
Menu, SubMenu12.2, Add, Slide2, AnimMenuHandler
Menu, SubMenu12.2, Add, Slide3, AnimMenuHandler
Menu, SubMenu12, Add, Slide, :SubMenu12.2

Menu, SubMenu12.3, Add, SlowClap, AnimMenuHandler
Menu, SubMenu12.3, Add, ClapAngry, AnimMenuHandler
Menu, SubMenu12, Add, Clapping, :SubMenu12.3

Menu, SubMenu12, Add, Celebrate, AnimMenuHandler
Menu, SubMenu12, Add, Countdown, AnimMenuHandler

Menu, FullMenu, Add, Cheer/Celebrate, :SubMenu12

; ----------------------------------------------------------------------------
; Mocking
; ----------------------------------------------------------------------------
Menu, SubMenu13.1, Add, Chicken, AnimMenuHandler
Menu, SubMenu13.1, Add, Chicken2, AnimMenuHandler
Menu, SubMenu13, Add, Chicken, :SubMenu13.1

Menu, SubMenu13.2, Add, ChinBrush, AnimMenuHandler
Menu, SubMenu13.2, Add, ChinBrush2, AnimMenuHandler
Menu, SubMenu13, Add, Chin brush, :SubMenu13.2

Menu, SubMenu13, Add, ComeAtMeBro, AnimMenuHandler

Menu, SubMenu13.3, Add, CryBaby, AnimMenuHandler
Menu, SubMenu13.3, Add, CryBaby2, AnimMenuHandler
Menu, SubMenu13, Add, Cry baby, :SubMenu13.3

Menu, SubMenu13.4, Add, CutThroat, AnimMenuHandler
Menu, SubMenu13.4, Add, CutThroat2, AnimMenuHandler
Menu, SubMenu13, Add, Cut Throat, :SubMenu13.4

Menu, SubMenu13.5, Add, Dock, AnimMenuHandler
Menu, SubMenu13.5, Add, Dock2, AnimMenuHandler
Menu, SubMenu13, Add, Dock, :SubMenu13.5

Menu, SubMenu13.6, Add, Finger, AnimMenuHandler
Menu, SubMenu13.6, Add, Finger2, AnimMenuHandler
Menu, SubMenu13, Add, Finger, :SubMenu13.6

Menu, SubMenu13.7, Add, FlipOff, AnimMenuHandler
Menu, SubMenu13.7, Add, FlipOff2, AnimMenuHandler
Menu, SubMenu13.7, Add, FlipOff3, AnimMenuHandler
Menu, SubMenu13.7, Add, FlipOff4, AnimMenuHandler
Menu, SubMenu13, Add, Flip off, :SubMenu13.7

Menu, SubMenu13, Add, ScrewYou, AnimMenuHandler

Menu, SubMenu13.8, Add, Shush, AnimMenuHandler
Menu, SubMenu13.8, Add, Shush2, AnimMenuHandler
Menu, SubMenu13, Add, Shush, :SubMenu13.8

Menu, SubMenu13.9, Add, SlowClap2, AnimMenuHandler
Menu, SubMenu13.9, Add, SlowClap3, AnimMenuHandler
Menu, SubMenu13, Add, Slow clap, :SubMenu13.9

Menu, SubMenu13.10, Add, ThumbOnEars, AnimMenuHandler
Menu, SubMenu13.10, Add, ThumbOnEars2, AnimMenuHandler
Menu, SubMenu13, Add, Thumbs on ears, :SubMenu13.10

Menu, SubMenu13.11, Add, ThumbsDown, AnimMenuHandler
Menu, SubMenu13.11, Add, ThumbsDown2, AnimMenuHandler
Menu, SubMenu13, Add, Thumbs down, :SubMenu13.11

Menu, SubMenu13, Add, Wank, AnimMenuHandler

Menu, SubMenu13, Add, Cantc, AnimMenuHandler

Menu, FullMenu, Add, Mocking, :SubMenu13

; ----------------------------------------------------------------------------
; Work
; ----------------------------------------------------------------------------
Menu, SubMenu14.1, Add, Photo, AnimMenuHandler
Menu, SubMenu14.1, Add, Photo2, AnimMenuHandler
Menu, SubMenu14, Add, Make photo's, :SubMenu14.1

Menu, SubMenu14, Add, Radio, AnimMenuHandler

Menu, SubMenu14.2, Add, Computer, AnimMenuHandler
Menu, SubMenu14.2, Add, Type, AnimMenuHandler
Menu, SubMenu14.2, Add, Type2, AnimMenuHandler
Menu, SubMenu14.2, Add, Type3, AnimMenuHandler
Menu, SubMenu14.2, Add, Type4, AnimMenuHandler
Menu, SubMenu14, Add, Type, :SubMenu14.2

Menu, SubMenu14.3, Add, Welding, AnimMenuHandler
Menu, SubMenu14.3, Add, Welding2, AnimMenuHandler
Menu, SubMenu14.3, Add, Welding3, AnimMenuHandler
Menu, SubMenu14.3, Add, Welding4, AnimMenuHandler
Menu, SubMenu14, Add, Welding, :SubMenu14.3

Menu, SubMenu14, Add, Waiter, AnimMenuHandler

Menu, SubMenu14, Add, Dig2, AnimMenuHandler

Menu, FullMenu, Add, Work, :SubMenu14

; ----------------------------------------------------------------------------
; Medical/Injuries
; ----------------------------------------------------------------------------
Menu, SubMenu15.1, Add, CPR, AnimMenuHandler
Menu, SubMenu15.1, Add, CPR2, AnimMenuHandler
Menu, SubMenu15, Add, CPR, :SubMenu15.1

Menu, SubMenu15.2, Add, FallOver, AnimMenuHandler
Menu, SubMenu15.2, Add, FallOver2, AnimMenuHandler
Menu, SubMenu15.2, Add, FallOver3, AnimMenuHandler
Menu, SubMenu15.2, Add, FallOver4, AnimMenuHandler
Menu, SubMenu15.2, Add, FallOver5, AnimMenuHandler
Menu, SubMenu15, Add, Falling over, :SubMenu15.2

Menu, SubMenu15, Add, Inspect, AnimMenuHandler
Menu, SubMenu15, Add, Medic, AnimMenuHandler

Menu, SubMenu15.3, Add, PassOut, AnimMenuHandler
Menu, SubMenu15.3, Add, PassOut2, AnimMenuHandler
Menu, SubMenu15.3, Add, PassOut3, AnimMenuHandler
Menu, SubMenu15.3, Add, PassOut4, AnimMenuHandler
Menu, SubMenu15.3, Add, PassOut5, AnimMenuHandler
Menu, SubMenu15, Add, Passing out, :SubMenu15.3

Menu, SubMenu15.4, Add, Crawl, AnimMenuHandler
Menu, SubMenu15.4, Add, LayingPain, AnimMenuHandler
Menu, SubMenu15.4, Add, Shot, AnimMenuHandler
Menu, SubMenu15, Add, Pain on ground, :SubMenu15.4

Menu, SubMenu15.5, Add, Slumped, AnimMenuHandler
Menu, SubMenu15.5, Add, Slumped2, AnimMenuHandler
Menu, SubMenu15, Add, Slumped, :SubMenu15.5

Menu, FullMenu, Add, Medical/Injuries, :SubMenu15

; ----------------------------------------------------------------------------
; Food/Drink
; ----------------------------------------------------------------------------
Menu, SubMenu16, Add, Drink, AnimMenuHandler
Menu, SubMenu16, Add, Eat, AnimMenuHandler
Menu, SubMenu16, Add, Fruits, AnimMenuHandler

Menu, FullMenu, Add, Food/Drink, :SubMenu16

; ----------------------------------------------------------------------------
; Sports/Tricks
; ----------------------------------------------------------------------------
Menu, SubMenu17.1, Add, Flip, AnimMenuHandler
Menu, SubMenu17.1, Add, Flip2, AnimMenuHandler
Menu, SubMenu17, Add, Flip, :SubMenu17.1

Menu, SubMenu17.2, Add, Jog, AnimMenuHandler
Menu, SubMenu17.2, Add, Jog2, AnimMenuHandler
Menu, SubMenu17.2, Add, Jog3, AnimMenuHandler
Menu, SubMenu17.2, Add, Jog4, AnimMenuHandler
Menu, SubMenu17, Add, Jogging, :SubMenu17.2

Menu, SubMenu17.3, Add, Karate, AnimMenuHandler
Menu, SubMenu17.3, Add, Karate2, AnimMenuHandler
Menu, SubMenu17, Add, Karate, :SubMenu17.3

Menu, SubMenu17.4, Add, Push, AnimMenuHandler
Menu, SubMenu17.4, Add, Push2, AnimMenuHandler
Menu, SubMenu17, Add, Push, :SubMenu17.4

Menu, SubMenu17.5, Add, SitUp, AnimMenuHandler
Menu, SubMenu17.5, Add, SitUps, AnimMenuHandler
Menu, SubMenu17.5, Add, SitUps2, AnimMenuHandler
Menu, SubMenu17, Add, Sit ups, :SubMenu17.5

Menu, SubMenu17.6, Add, Stretch, AnimMenuHandler
Menu, SubMenu17.6, Add, Stretch2, AnimMenuHandler
Menu, SubMenu17.6, Add, Stretch3, AnimMenuHandler
Menu, SubMenu17.6, Add, Stretch4, AnimMenuHandler
Menu, SubMenu17.6, Add, Stretch5, AnimMenuHandler
Menu, SubMenu17, Add, Stretching, :SubMenu17.6

Menu, SubMenu17.7, Add, Yoga, AnimMenuHandler
Menu, SubMenu17.7, Add, Yoga2, AnimMenuHandler
Menu, SubMenu17.7, Add, Yoga3, AnimMenuHandler
Menu, SubMenu17.7, Add, Yoga4, AnimMenuHandler
Menu, SubMenu17.7, Add, Yoga5, AnimMenuHandler
Menu, SubMenu17, Add, Yoga, :SubMenu17.7

Menu, SubMenu17.8, Add, GolfSwing, AnimMenuHandler
Menu, SubMenu17.8, Add, Hiking, AnimMenuHandler
Menu, SubMenu17.8, Add, JumpingJacks, AnimMenuHandler
Menu, SubMenu17.8, Add, OutOfBreath, AnimMenuHandler
Menu, SubMenu17.8, Add, PressUps, AnimMenuHandler
Menu, SubMenu17.8, Add, PushUp, AnimMenuHandler
Menu, SubMenu17.8, Add, Pull, AnimMenuHandler
Menu, SubMenu17.8, Add, PullUp, AnimMenuHandler
Menu, SubMenu17.8, Add, Punching, AnimMenuHandler
Menu, SubMenu17.8, Add, Slugger, AnimMenuHandler
Menu, SubMenu17, Add, Other, :SubMenu17.8

Menu, FullMenu, Add, Sports/Tricks, :SubMenu17

; ----------------------------------------------------------------------------
; Mechanic
; ----------------------------------------------------------------------------
Menu, SubMenu18, Add, Inspect, AnimMenuHandler
Menu, SubMenu18, Add, KeyFob, AnimMenuHandler

Menu, SubMenu18.1, Add, Mechanic, AnimMenuHandler
Menu, SubMenu18.1, Add, Mechanic2, AnimMenuHandler
Menu, SubMenu18.1, Add, Mechanic3, AnimMenuHandler
Menu, SubMenu18.1, Add, Mechanic4, AnimMenuHandler
Menu, SubMenu18.1, Add, Mechanic5, AnimMenuHandler
Menu, SubMenu18, Add, Mechanic, :SubMenu18.1

Menu, SubMenu18.2, Add, Welding, AnimMenuHandler
Menu, SubMenu18.2, Add, Welding2, AnimMenuHandler
Menu, SubMenu18.2, Add, Welding3, AnimMenuHandler
Menu, SubMenu18.2, Add, Welding4, AnimMenuHandler
Menu, SubMenu18, Add, Welding, :SubMenu18.2

Menu, FullMenu, Add, Mechanic, :SubMenu18

; ----------------------------------------------------------------------------
; Gestures/signs
; ----------------------------------------------------------------------------
Menu, SubMenu19, Add, BlowKiss, AnimMenuHandler

Menu, SubMenu19.1, Add, Dock, AnimMenuHandler
Menu, SubMenu19.1, Add, Dock2, AnimMenuHandler
Menu, SubMenu19, Add, Dock, :SubMenu19.1

Menu, SubMenu19.2, Add, Finger, AnimMenuHandler
Menu, SubMenu19.2, Add, Finger2, AnimMenuHandler
Menu, SubMenu19, Add, Finger, :SubMenu19.2

Menu, SubMenu19.3, Add, FingerKiss, AnimMenuHandler
Menu, SubMenu19.3, Add, FingerKiss2, AnimMenuHandler
Menu, SubMenu19, Add, Finger kiss, :SubMenu19.3

Menu, SubMenu19.4, Add, FlipOff, AnimMenuHandler
Menu, SubMenu19.4, Add, FlipOff2, AnimMenuHandler
Menu, SubMenu19.4, Add, FlipOff3, AnimMenuHandler
Menu, SubMenu19.4, Add, FlipOff4, AnimMenuHandler
Menu, SubMenu19, Add, Flipping off, :SubMenu19.4

Menu, SubMenu19.5, Add, Gang, AnimMenuHandler
Menu, SubMenu19.5, Add, Gang2, AnimMenuHandler
Menu, SubMenu19, Add, Gang, :SubMenu19.5

Menu, SubMenu19.6, Add, Loco, AnimMenuHandler
Menu, SubMenu19.6, Add, Loco2, AnimMenuHandler
Menu, SubMenu19, Add, Loco, :SubMenu19.6

Menu, SubMenu19, Add, Me, AnimMenuHandler
Menu, SubMenu19, Add, Metal, AnimMenuHandler
Menu, SubMenu19, Add, Rock, AnimMenuHandler

Menu, SubMenu19.7, Add, MindBlown, AnimMenuHandler
Menu, SubMenu19.7, Add, MindBlown2, AnimMenuHandler
Menu, SubMenu19, Add, Mind Blown, :SubMenu19.7

Menu, SubMenu19.8, Add, Peace, AnimMenuHandler
Menu, SubMenu19.8, Add, Peace2, AnimMenuHandler
Menu, SubMenu19.8, Add, Peace3, AnimMenuHandler
Menu, SubMenu19.8, Add, Peace4, AnimMenuHandler
Menu, SubMenu19, Add, Peace, :SubMenu19.8

Menu, SubMenu19.9, Add, Shush, AnimMenuHandler
Menu, SubMenu19.9, Add, Shush2, AnimMenuHandler
Menu, SubMenu19, Add, Shush, :SubMenu19.9

Menu, SubMenu19.10, Add, V, AnimMenuHandler
Menu, SubMenu19.10, Add, V2, AnimMenuHandler
Menu, SubMenu19, Add, V, :SubMenu19.10

Menu, SubMenu19, Add, Sheesh, AnimMenuHandler

Menu, SubMenu19, Add, Cantc, AnimMenuHandler

Menu, FullMenu, Add, Gestures/signs, :SubMenu19

; ----------------------------------------------------------------------------
; Fortnite
; ----------------------------------------------------------------------------
Menu, SubMenu20, Add, Fort - 1 - 48, AnimMenuHandlerRange

Menu, FullMenu, Add, Fortnite, :SubMenu20

; ----------------------------------------------------------------------------
; Tactics
; ----------------------------------------------------------------------------
Menu, SubMenu21, Add, tactic_holdw2, AnimMenuHandler
Menu, SubMenu21, Add, tactic_holdw4, AnimMenuHandler
Menu, SubMenu21, Add, tactic_holdwkn, AnimMenuHandler
Menu, SubMenu21, Add, tactic_holdwnvg, AnimMenuHandler
Menu, SubMenu21, Add, tactic_holdwnvg2, AnimMenuHandler
Menu, SubMenu21, Add, tactic_hugw, AnimMenuHandler
Menu, SubMenu21, Add, tactic_hugw2, AnimMenuHandler
Menu, SubMenu21, Add, tactic_posew, AnimMenuHandler
Menu, SubMenu21, Add, tactic_posew2, AnimMenuHandler
Menu, SubMenu21, Add, tactic_posew3, AnimMenuHandler
Menu, SubMenu21, Add, tactic_aimw, AnimMenuHandler
Menu, SubMenu21, Add, tactic_preaimw, AnimMenuHandler
Menu, SubMenu21, Add, tactic_runw, AnimMenuHandler
Menu, SubMenu21, Add, tactic_tknl, AnimMenuHandler
Menu, SubMenu21, Add, tactic_holdv, AnimMenuHandler
Menu, SubMenu21, Add, tactic_holdsv, AnimMenuHandler
Menu, SubMenu21, Add, tactic_holdsvs, AnimMenuHandler
Menu, SubMenu21, Add, tactic_holdv2, AnimMenuHandler
Menu, SubMenu21, Add, tactic_holdvsg, AnimMenuHandler
Menu, SubMenu21, Add, tactic_holdvsg2, AnimMenuHandler
Menu, SubMenu21, Add, tactic_radioL, AnimMenuHandler
Menu, SubMenu21, Add, tactic_holdr, AnimMenuHandler

Menu, FullMenu, Add, Tactics, :SubMenu21

; ----------------------------------------------------------------------------
; Rock/Paper/Scissors
; ----------------------------------------------------------------------------
Menu, SubMenu22, Add, Rock, AnimMenuHandler
Menu, SubMenu22, Add, Paper, AnimMenuHandler
Menu, SubMenu22, Add, Scissors, AnimMenuHandler

Menu, FullMenu, Add, Rock/Paper/Scissors, :SubMenu22

; ----------------------------------------------------------------------------
; PROP Beverages
; ----------------------------------------------------------------------------
Menu, SubMenuP1.1, Add, beer, PropAnimMenuHandler
Menu, SubMenuP1.1, Add, beerbox, PropAnimMenuHandler
Menu, SubMenuP1.1, Add, beerbox2, PropAnimMenuHandler
Menu, SubMenuP1.1, Add, beerbox3, PropAnimMenuHandler
Menu, SubMenuP1.1, Add, beerbox4, PropAnimMenuHandler
Menu, SubMenuP1.1, Add, coffee, PropAnimMenuHandler
Menu, SubMenuP1.1, Add, cup, PropAnimMenuHandler
Menu, SubMenuP1.1, Add, soda, PropAnimMenuHandler
Menu, SubMenuP1.1, Add, whiskey, PropAnimMenuHandler
Menu, SubMenuP1.1, Add, whiskeyb, PropAnimMenuHandler
Menu, SubMenuP1.1, Add, wine, PropAnimMenuHandler

Menu, SubMenuP1, Add, Beverages, :SubMenuP1.1

; ----------------------------------------------------------------------------
; PROP Food and eating
; ----------------------------------------------------------------------------
Menu, SubMenuP1.2, Add, beans, PropAnimMenuHandler

Menu, SubMenuP1.2.1, Add, carryfoodbag, PropAnimMenuHandler
Menu, SubMenuP1.2.1, Add, carryfoodbag2, PropAnimMenuHandler
Menu, SubMenuP1.2.1, Add, carryfoodbag3, PropAnimMenuHandler
Menu, SubMenuP1.2, Add, Carry foodbag, :SubMenuP1.2.1

Menu, SubMenuP1.2.2, Add, carryfoodtray, PropAnimMenuHandler
Menu, SubMenuP1.2.2, Add, carryfoodtray2, PropAnimMenuHandler
Menu, SubMenuP1.2.2, Add, carryfoodtray3, PropAnimMenuHandler
Menu, SubMenuP1.2.2, Add, carryfoodtray5, PropAnimMenuHandler
Menu, SubMenuP1.2.2, Add, carryfoodtray6, PropAnimMenuHandler
Menu, SubMenuP1.2.2, Add, carryfoodtray7, PropAnimMenuHandler
Menu, SubMenuP1.2.2, Add, carryfoodtray8, PropAnimMenuHandler
Menu, SubMenuP1.2.2, Add, carryfoodtray9, PropAnimMenuHandler
Menu, SubMenuP1.2, Add, Carry food tray, :SubMenuP1.2.2

Menu, SubMenuP1.2, Add, carrypizza, PropAnimMenuHandler
Menu, SubMenuP1.2, Add, donut, PropAnimMenuHandler
Menu, SubMenuP1.2, Add, egobar, PropAnimMenuHandler

Menu, SubMenuP1, Add, Food and eating, :SubMenuP1.2

; ----------------------------------------------------------------------------
; PROP Tools and equipment
; ----------------------------------------------------------------------------
Menu, SubMenuP1.3, Add, binoculars, PropAnimMenuHandler
Menu, SubMenuP1.3, Add, binoculars2, PropAnimMenuHandler
Menu, SubMenuP1.3, Add, binoculars_static, PropAnimMenuHandler
Menu, SubMenuP1.3, Add, toolbox, PropAnimMenuHandler
Menu, SubMenuP1.3, Add, toolbox2, PropAnimMenuHandler

Menu, SubMenuP1, Add, Tools and equipment, :SubMenuP1.3

; ----------------------------------------------------------------------------
; PROP Accessories
; ----------------------------------------------------------------------------
Menu, SubMenuP1.4, Add, badge, PropAnimMenuHandler

Menu, SubMenuP1, Add, Accessories, :SubMenuP1.4

; ----------------------------------------------------------------------------
; PROP Misclenaeous
; ----------------------------------------------------------------------------
Menu, SubMenuP1.5, Add, book, PropAnimMenuHandler
Menu, SubMenuP1.5, Add, box, PropAnimMenuHandler
Menu, SubMenuP1.5, Add, cop, PropAnimMenuHandler
Menu, SubMenuP1.5, Add, hitchhike, PropAnimMenuHandler
Menu, SubMenuP1.5, Add, map, PropAnimMenuHandler
Menu, SubMenuP1.5, Add, map2, PropAnimMenuHandler
Menu, SubMenuP1.5, Add, teddy, PropAnimMenuHandler
Menu, SubMenuP1.5, Add, umbrella, PropAnimMenuHandler

Menu, SubMenuP1, Add, Misclenaeous, :SubMenuP1.5

; ----------------------------------------------------------------------------
; PROP Cleaning
; ----------------------------------------------------------------------------
Menu, SubMenuP1.6, Add, binbag, PropAnimMenuHandler
Menu, SubMenuP1.6, Add, clean, PropAnimMenuHandler
Menu, SubMenuP1.6, Add, clean2, PropAnimMenuHandler
Menu, SubMenuP1.6, Add, mop, PropAnimMenuHandler
Menu, SubMenuP1.6, Add, mop2, PropAnimMenuHandler

Menu, SubMenuP1, Add, Cleaning, :SubMenuP1.6

; ----------------------------------------------------------------------------
; PROP Smoking
; ----------------------------------------------------------------------------
Menu, SubMenuP1.7, Add, bong, PropAnimMenuHandler
Menu, SubMenuP1.7, Add, cigar, PropAnimMenuHandler
Menu, SubMenuP1.7, Add, cigar2, PropAnimMenuHandler
Menu, SubMenuP1.7, Add, joint, PropAnimMenuHandler
Menu, SubMenuP1.7, Add, smoke, PropAnimMenuHandler
Menu, SubMenuP1.7, Add, smoke2, PropAnimMenuHandler
Menu, SubMenuP1.7, Add, smoke3, PropAnimMenuHandler
Menu, SubMenuP1.7, Add, smoke4, PropAnimMenuHandler
Menu, SubMenuP1.7, Add, vape, PropAnimMenuHandler
Menu, SubMenuP1.7, Add, vape2, PropAnimMenuHandler

Menu, SubMenuP1, Add, Smoking, :SubMenuP1.7

; ----------------------------------------------------------------------------
; PROP Music and instruments
; ----------------------------------------------------------------------------
Menu, SubMenuP1.8, Add, boombox, PropAnimMenuHandler
Menu, SubMenuP1.8, Add, flute, PropAnimMenuHandler
Menu, SubMenuP1.8, Add, flute2, PropAnimMenuHandler
Menu, SubMenuP1.8, Add, guitar, PropAnimMenuHandler
Menu, SubMenuP1.8, Add, guitar2, PropAnimMenuHandler
Menu, SubMenuP1.8, Add, guitarelectric, PropAnimMenuHandler
Menu, SubMenuP1.8, Add, guitarelectric2, PropAnimMenuHandler

Menu, SubMenuP1, Add, Music and instruments, :SubMenuP1.8

; ----------------------------------------------------------------------------
; PROP Devices
; ----------------------------------------------------------------------------
Menu, SubMenuP1.9, Add, phone, PropAnimMenuHandler
Menu, SubMenuP1.9, Add, phonecall, PropAnimMenuHandler
Menu, SubMenuP1.9, Add, tablet, PropAnimMenuHandler
Menu, SubMenuP1.9, Add, tablet2, PropAnimMenuHandler

Menu, SubMenuP1, Add, Devices, :SubMenuP1.9

; ----------------------------------------------------------------------------
; PROP Note-taking
; ----------------------------------------------------------------------------
Menu, SubMenuP1.10, Add, clipboard, PropAnimMenuHandler
Menu, SubMenuP1.10, Add, notepad, PropAnimMenuHandler

Menu, SubMenuP1, Add, Note-taking, :SubMenuP1.10

; ----------------------------------------------------------------------------
; PROP Signs
; ----------------------------------------------------------------------------
Menu, SubMenuP1.11, Add, beg, PropAnimMenuHandler
Menu, SubMenuP1.11, Add, protest, PropAnimMenuHandler

Menu, SubMenuP1, Add, Signs, :SubMenuP1.11

; ----------------------------------------------------------------------------
; PROP Sports
; ----------------------------------------------------------------------------
Menu, SubMenuP1.12, Add, tennisplay, PropAnimMenuHandler
Menu, SubMenuP1.12, Add, weights, PropAnimMenuHandler
Menu, SubMenuP1.12, Add, weights2, PropAnimMenuHandler

Menu, SubMenuP1, Add, Sports, :SubMenuP1.12

; ----------------------------------------------------------------------------
; PROP Film/photo
; ----------------------------------------------------------------------------
Menu, SubMenuP1.13, Add, camera, PropAnimMenuHandler
Menu, SubMenuP1.13, Add, mugshot, PropAnimMenuHandler
Menu, SubMenuP1.13, Add, selfie, PropAnimMenuHandler

Menu, SubMenuP1, Add, Film/photo, :SubMenuP1.13

; ----------------------------------------------------------------------------
; PROP Outdoor/yard
; ----------------------------------------------------------------------------
Menu, SubMenuP1.14, Add, dig, PropAnimMenuHandler
Menu, SubMenuP1.14, Add, leafblower, PropAnimMenuHandler
Menu, SubMenuP1.14, Add, rakel, PropAnimMenuHandler
Menu, SubMenuP1.14, Add, rake2, PropAnimMenuHandler
Menu, SubMenuP1.14, Add, rake3, PropAnimMenuHandler
Menu, SubMenuP1.14, Add, rake4, PropAnimMenuHandler

Menu, SubMenuP1, Add, Outdoor/yard, :SubMenuP1.14

; ----------------------------------------------------------------------------
; PROP Fishing
; ----------------------------------------------------------------------------
Menu, SubMenuP1.15, Add, fishing1, PropAnimMenuHandler
Menu, SubMenuP1.15, Add, fishing2, PropAnimMenuHandler
Menu, SubMenuP1.15, Add, fishing3, PropAnimMenuHandler

Menu, SubMenuP1, Add, Fishing, :SubMenuP1.15

; ----------------------------------------------------------------------------
; PROP Vehicle
; ----------------------------------------------------------------------------
Menu, SubMenuP1.16, Add, fuel, PropAnimMenuHandler
Menu, SubMenuP1.16, Add, fuelcarry, PropAnimMenuHandler

Menu, SubMenuP1, Add, Vehicle, :SubMenuP1.16

; ----------------------------------------------------------------------------
; PROP Party
; ----------------------------------------------------------------------------
Menu, SubMenuP1.17, Add, glow, PropAnimMenuHandler
Menu, SubMenuP1.17, Add, glow2, PropAnimMenuHandler
Menu, SubMenuP1.17, Add, glow3, PropAnimMenuHandler

Menu, SubMenuP1, Add, Party, :SubMenuP1.17

; ----------------------------------------------------------------------------
; PROP Horse
; ----------------------------------------------------------------------------
Menu, SubMenuP1.18, Add, horse, PropAnimMenuHandler
Menu, SubMenuP1.18, Add, horse2, PropAnimMenuHandler
Menu, SubMenuP1.18, Add, horse3, PropAnimMenuHandler

Menu, SubMenuP1, Add, Horse, :SubMenuP1.18

; ----------------------------------------------------------------------------
; PROP Bags and suitcases
; ----------------------------------------------------------------------------
Menu, SubMenuP1.19, Add, backpack, PropAnimMenuHandler
Menu, SubMenuP1.19, Add, medbag, PropAnimMenuHandler
Menu, SubMenuP1.19, Add, suitcase, PropAnimMenuHandler
Menu, SubMenuP1.19, Add, suitcase2, PropAnimMenuHandler

Menu, SubMenuP1, Add, Bags and suitcases, :SubMenuP1.19

; ----------------------------------------------------------------------------
; PROP Flowers
; ----------------------------------------------------------------------------
Menu, SubMenuP1.20, Add, bouquet, PropAnimMenuHandler
Menu, SubMenuP1.20, Add, rose, PropAnimMenuHandler

Menu, SubMenuP1, Add, Flowers, :SubMenuP1.20

; ----------------------------------------------------------------------------
; PROP News
; ----------------------------------------------------------------------------
Menu, SubMenuP1.21, Add, news1, PropAnimMenuHandler
Menu, SubMenuP1.21, Add, news2, PropAnimMenuHandler
Menu, SubMenuP1.21, Add, news3, PropAnimMenuHandler

Menu, SubMenuP1, Add, News, :SubMenuP1.21

; ----------------------------------------------------------------------------
; PROP Graffiti
; ----------------------------------------------------------------------------
Menu, SubMenuP1.22, Add, tag, PropAnimMenuHandler
Menu, SubMenuP1.22, Add, tag2, PropAnimMenuHandler
Menu, SubMenuP1.22, Add, tag3, PropAnimMenuHandler
Menu, SubMenuP1.22, Add, tag4, PropAnimMenuHandler
Menu, SubMenuP1.22, Add, tag5, PropAnimMenuHandler
Menu, SubMenuP1.22, Add, tag6, PropAnimMenuHandler

Menu, SubMenuP1, Add, Graffiti, :SubMenuP1.22

; ----------------------------------------------------------------------------
; PROP animation menu option
; ----------------------------------------------------------------------------
Menu, FullMenu, Add, PROP ANIMATIONS, :SubMenuP1

; ----------------------------------------------------------------------------
; CLOSE APP
; ----------------------------------------------------------------------------
Menu, FullMenu, Add, Exit application, ExitApplication

; ----------------------------------------------------------------------------
; APPLICATION WIDE FUNCTIONS
; ----------------------------------------------------------------------------
CoordMode, Menu, Screen
Menu, FullMenu, Show, % A_ScreenWidth/2, % A_ScreenHeight/2
return

AnimMenuHandler:
send, t
sleep, 50
send, /anim %A_ThisMenuItem%{enter}
return

AnimMenuHandlerRange:
    StringSplit, Parts, A_ThisMenuItem, -, %A_Space%
    BaseCommand := Trim(Parts1)
    StartRange := Trim(Parts2)
    EndRange := Trim(Parts3)

    InputBox, UserInput, Choose an animation number, Please enter a number between %StartRange% and %EndRange%
    if (ErrorLevel) {
        return
    }

    if (UserInput is number and UserInput >= StartRange and UserInput <= EndRange) {
        send, t
        sleep, 50
        send, /anim %BaseCommand%%UserInput%{enter}
    } else {
        MsgBox, Invalid input. Please enter a number between %StartRange% and %EndRange%.
    }
return

PropAnimMenuHandler:
send, t
sleep, 50
send, /panim %A_ThisMenuItem%{enter}
return

ExitApplication:
ExitApp
return

return