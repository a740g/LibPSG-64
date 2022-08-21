'-----------------------------------------------------------------------------------------------------
' LibPSG MML Player Demo
' Copyright (c) 2022 Samuel Gomes
'-----------------------------------------------------------------------------------------------------

'-----------------------------------------------------------------------------------------------------
' HEADER FILES
'-----------------------------------------------------------------------------------------------------
'$Include:'./LibPSG.bi'
'-----------------------------------------------------------------------------------------------------

'-----------------------------------------------------------------------------------------------------
' CONSTANTS
'-----------------------------------------------------------------------------------------------------
Const APP_NAME = "PSG MML Player Demo"
'-----------------------------------------------------------------------------------------------------

'-----------------------------------------------------------------------------------------------------
' PROGRAM ENTRY POINT
'-----------------------------------------------------------------------------------------------------
Title APP_NAME
AllowFullScreen SquarePixels , Smooth ' All the user to press Alt+Enter to go fullscreen

Dim As String CH0Verse_1, CH0Verse_2, CH0Verse_3, CH1Verse_1, CH1Verse_2, CH1Verse_3, CH2Verse_1, CH2Verse_2, CH2Verse_3, CH2Verse_4, CH3Verse_1
Dim As String Channel_0, Channel_1, Channel_2, Channel_3, Caption
Dim c As Long

Do
    Do
        Cls
        Print
        Print APP_NAME
        Print "-------------------"
        Print
        Print "Enter number for a tune to play. Enter 0 to exit."
        Print
        Print "1. Demo 1 by Wilbert Brants"
        Print "2. Demo 2 by Wilbert Brants"
        Print "3. Demo 3 by J. Baker"
        Print "4. Demo 4 by J. Baker"
        Print "5. Demo 5 by J. Baker"
        Print "6. Demo 6 by Wilbert Brants"
        Print "7. Demo 7 by Wilbert Brants"
        Print
        Input "Your choice"; c
    Loop While c < 0 Or c > 7

    Select Case c
        Case 1
            Caption = "Demo 1 by Wilbert Brants"

            CH0Verse_1 = "t11 w1 o1 \8 v48 L8 G4B-B-G4B-B-  G4>E-E-<G4>E-E-<  A>CF4<A>CF4<  F4AAGB->D4<"

            CH1Verse_1 = "t11 w4 o3 \2 v42 L8 GB->D4<GB->D4<  GB->E-<B-GB->E-<B-  A>CF4<A>CF4<  FA>C<AGB->D4<"

            CH2Verse_1 = "t11 w4 o5 \1 v44 L4 GG2G8F8 E-E-2E-8D8 CCCD E-2D2"
            CH2Verse_2 = "B-B-2B-8A8 GG2G8F8 CCCD E-2D2"
            CH2Verse_3 = "B-B-2B-8A8 GG2G8F8 ACFA G2D2"

            Channel_0 = CH0Verse_1 + CH0Verse_1 + CH0Verse_1 + CH0Verse_1
            Channel_1 = CH1Verse_1 + CH1Verse_1 + CH1Verse_1 + CH1Verse_1
            Channel_2 = CH2Verse_1 + CH2Verse_2 + CH2Verse_1 + CH2Verse_3
            Channel_3 = ""

        Case 2
            Caption = "Demo 2 by Wilbert Brants"

            Channel_0 = "t13 w1 o2 \16 v44 l8 v+cv-ceeg4 v+fv-faa>cc< v+cv-ceeg4 v+fv-faa>cc< ggbb>d4< \8 g4c2 :"
            Channel_1 = "t13 w4 o3 \2 v40 l4 gec f2a8c8 gec f2a8c8 gbd ec2 :"
            Channel_2 = "t13 w0 o5 \2 v44 l8 cegceg l4 caf l8 cegceg l4 caf l8 gbdgbd l4 cgg :"
            Channel_3 = ""


        Case 3
            Caption = "Demo 3 by J. Baker"

            Channel_0 = "t12 w4 o3 \2 v40 l8 <dced> dcge4 l4 \1 <d1> r8 l8 \2 dg l4 \1 <d1> l8 \2 dge \1 <d1> \2 dcdrr v+ <<dd>> v- r"
            Channel_1 = "t12 w4 o4 \1 v42 l8 >dcde< dcde#4 l4 >d1< l8 de l4 >f1 l8 ddfe1< dedfe dd r4"
            Channel_2 = ""
            Channel_3 = ""

        Case 4
            Caption = "Demo 4 by J. Baker"

            CH0Verse_1 = "t13 w4 o2 \3 v40 w4 \3 o2 dd2 w5 \4 o5 c"
            CH0Verse_2 = "w4 \3 o2 d2 w5 \4 o5 cd"
            CH0Verse_3 = ":"

            CH1Verse_1 = "t13 w4 o4 \1 v40 \1,9,5,1 l1 gba \5,9,5 l4 gab2"
            CH1Verse_2 = "v40 \9,1 l1 gba \2 l4 gab2"
            CH1Verse_3 = ":"

            CH2Verse_1 = "t13 w1 o5 \1 v42 r1r1"
            CH2Verse_2 = "cd>d<e"
            CH2Verse_3 = "cd>d2<"
            CH2Verse_4 = ":"

            CH3Verse_1 = "t13 w3 o5 \10 v37 l8 d :"

            Channel_0 = CH0Verse_1 + CH0Verse_1 + CH0Verse_1 + CH0Verse_1 + CH0Verse_1 + CH0Verse_1 + CH0Verse_1 + CH0Verse_1 + CH0Verse_2 + CH0Verse_2 + CH0Verse_2 + CH0Verse_2 + CH0Verse_3
            Channel_1 = CH1Verse_1 + CH1Verse_1 + CH1Verse_2 + CH1Verse_3
            Channel_2 = CH2Verse_1 + CH2Verse_1 + CH2Verse_1 + CH2Verse_1 + CH2Verse_2 + CH2Verse_2 + CH2Verse_2 + CH2Verse_3 + CH2Verse_4
            Channel_3 = CH3Verse_1

        Case 5
            Caption = "Demo 5 by J. Baker"

            Channel_0 = "\8 T15 W0 V49 O4 L4 EEB CACB:"
            Channel_1 = "\8 T15 W0 V42 O2 L4 F:"
            Channel_2 = "\3 T15 W0 V50 O3 R1 L1 A R1 L4 BAB R2 L1 B:"
            Channel_3 = "\8 T15 W0 V42 O4 R1 L1 A R1:"

        Case 6
            Caption = "Demo 6 by Wilbert Brants"

            Channel_0 = "\20 T10 W3 V55 O2 L16 ER*0E*1CECEC:"
            Channel_1 = "\4 T10 W2 V50 L8 BABABABABA:"
            Channel_2 = "\4 T10 W2 V50 L8 G>E<GEG>E<GEGE:"
            Channel_3 = ""

        Case 7
            Caption = "Demo 7 by Wilbert Brants"

            Channel_0 = "T11 \16 O2 V44 W1 L4 V+CV-E8E8 <FA> <V+GV-B8B8> CE :"
            Channel_1 = "T11 \8 O4 V44 W4 L8 CEG>C< <FA>CF <GB>DG CEG>C< :"
            Channel_2 = "T11 O5 W4 L4 CEC<G> CEC2 CEC<G> CE16R16E16R16C2 CEC<G> CEC2 CEC<G> C<G16>R16E16R16C2 :"
            Channel_3 = ""

        Case Else
            Exit Do ' Exit program
    End Select

    PlayMML Channel_0, Channel_1, Channel_2, Channel_3, Caption
Loop

System 0
'-----------------------------------------------------------------------------------------------------

'-----------------------------------------------------------------------------------------------------
' FUNCTIONS & SUBROUTINES
'-----------------------------------------------------------------------------------------------------
Sub PlayMML (chan0 As String, chan1 As String, chan2 As String, chan3 As String, caption As String)
    Dim As Single startTime, currentTime, elapsedTime
    Dim As String minute, second

    startTime = Timer
    PSG_PlayMML chan0 + Chr$(0), chan1 + Chr$(0), chan2 + Chr$(0), chan3 + Chr$(0) ' Add terminating NULLs

    Print
    Print "Playing "; caption; " (press ESC to stop)..."

    Do While PSG_IsPlayingMML And KeyHit <> 27
        currentTime = Timer
        If startTime > currentTime Then startTime = startTime - 86400
        elapsedTime = currentTime - startTime

        Locate , 1
        minute = Right$("00" + LTrim$(Str$(elapsedTime \ 60)), 2)
        second = Right$("00" + LTrim$(Str$(elapsedTime Mod 60)), 2)
        Print Using "Elapsed time: &:& (mm:ss)"; minute; second;

        Limit 15
    Loop

    Print
    Print "Done!"

    Sleep 1
    KeyClear

    PSG_Terminate
End Sub
'-----------------------------------------------------------------------------------------------------
'-----------------------------------------------------------------------------------------------------
