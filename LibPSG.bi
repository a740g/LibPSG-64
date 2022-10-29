'---------------------------------------------------------------------------------------------------------
' A library for playing MML music and sounds using Macrotune PSG
' Copyright (c) 2022 Samuel Gomes
'
' This uses Macrotune PSG by PoseMotion (https://www.posemotion.com/macrotune/)
' Macrotune is a Music Macro Language (MML) editor that allows you to easily create "retro" style music!
' Copyright (c) 2015 Wilbert Brants & J. Baker
'
' Music Macro Language
'
'   R        rest (if number follows, rest length)
'   CDEFGAB  note names (if number follows, note length)
'   + or #   sharp
'   -        flat
'   .        increase note length by half
'   <        octave - 1
'   >        octave + 1
'   O        octave (0 - 8)
'   K        transpose (-24 - +24)
'   L        note length (1 - 32)
'   T        tempo (0 - 15)
'   V        volume (0 - 63)
'   V+       increase volume
'   V-       decrease volume
'   W        waveform (0 = triangle, 1 = sawtooth, 2 = complex a, 3 = complex b, 4 = square, 5 = noise on channel1)
'   \        decay speed (0 = no decay) or volume envelope (0-9) (read below)
'   :        loop
'   *        post event (number can be retrieved in PureBasic with EventData() )
'
' Volume Envelope & Decay
'
'   The volume envelope uses the same "\" character as decay. This is because the decay doesn't work when
'   using a volume envelope. If you want to use the "\" as a decay, just type a backslash followed by a number.
'   Such as, "\2". If you want to use the "\" as a volume envelope, just type the backslash with multiple numbers
'   that are separated by commas. Such as, "\1,9,2,5". If you don't want the volume envelope to have interpolation,
'   then type a period after the backslash. Such as, "\.1,9,2,5".
'
' Tempo = BPM
'
'   T0  =  40 BPM
'   T6  =  60 BPM
'   T9  =  80 BPM
'   T10 =  90 BPM
'   T11 = 103 BPM
'   T12 = 120 BPM
'   T13 = 144 BPM
'   T14 = 180 BPM
'   T15 = 240 BPM
'
'---------------------------------------------------------------------------------------------------------

'---------------------------------------------------------------------------------------------------------
' HEADER FILES
'---------------------------------------------------------------------------------------------------------
'$Include:'./Common.bi'
'---------------------------------------------------------------------------------------------------------

$If LIBPSG_BI = UNDEFINED Then
    $Let LIBPSG_BI = TRUE
    '-----------------------------------------------------------------------------------------------------
    ' CONSTANTS
    '-----------------------------------------------------------------------------------------------------
    Const PSG_WAVEFORM_TRIANGLE = 0
    Const PSG_WAVEFORM_SAWTOOTH = 1
    Const PSG_WAVEFORM_COMPLEX_A = 2
    Const PSG_WAVEFORM_COMPLEX_B = 3
    Const PSG_WAVEFORM_SQUARE = 4
    Const PSG_WAVEFORM_NOISE = 5

    Const PSG_CHANNEL_VOLUME_MAX = 63
    Const PSG_MASTER_VOLUME_MAX = 1
    '-----------------------------------------------------------------------------------------------------

    '-----------------------------------------------------------------------------------------------------
    ' EXTERNAL LIBRARIES
    '-----------------------------------------------------------------------------------------------------
    $If WINDOWS Then
        $If 32BIT Then
                Declare Dynamic Library "./psg_win_x86"
        $Else
            Declare Dynamic Library "./psg_win_x64"
            $End If

        $ElseIf LINUX Then
            $ERROR Linux is not supported yet!
        $ElseIf MACOSX Then
            Declare Dynamic Library "./psg"
        $Else
            $ERROR Unknown platform!
        $End If

        Function PSG_IsPlayingMML& ' Returns non zero when MML is playing
        Sub PSG_PlayMML (Channel0 As String, Channel1 As String, Channel2 As String, Channel3 As String) ' Play MML. Remember to NULL terminate the strings!
        Sub PSG_SetMasterVolume (ByVal Volume As Single) ' Set master volume (0.0 - 1.0)
        Sub PSG_Sound (ByVal Channel As Unsigned Long, Byval Frequency As Single, Byval Volume As Unsigned Long, Byval Waveform As Unsigned Long) ' Generate sound
        Sub PSG_Terminate ' Termination function to be called at the end of an application
    End Declare
    '-----------------------------------------------------------------------------------------------------
$End If
'---------------------------------------------------------------------------------------------------------
