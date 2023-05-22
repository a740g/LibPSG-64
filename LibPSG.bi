'-----------------------------------------------------------------------------------------------------------------------
' A library for playing MML music and sounds using Macrotune PSG
' Copyright (c) 2023 Samuel Gomes
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
'-----------------------------------------------------------------------------------------------------------------------

$IF LIBPSG_BI = UNDEFINED THEN
    $LET LIBPSG_BI = TRUE
    '-------------------------------------------------------------------------------------------------------------------
    ' CONSTANTS
    '-------------------------------------------------------------------------------------------------------------------
    CONST PSG_WAVEFORM_TRIANGLE = 0
    CONST PSG_WAVEFORM_SAWTOOTH = 1
    CONST PSG_WAVEFORM_COMPLEX_A = 2
    CONST PSG_WAVEFORM_COMPLEX_B = 3
    CONST PSG_WAVEFORM_SQUARE = 4
    CONST PSG_WAVEFORM_NOISE = 5

    CONST PSG_CHANNEL_VOLUME_MAX = 63
    CONST PSG_MASTER_VOLUME_MAX = 1
    '-------------------------------------------------------------------------------------------------------------------

    '-------------------------------------------------------------------------------------------------------------------
    ' EXTERNAL LIBRARIES
    '-------------------------------------------------------------------------------------------------------------------
    $IF WINDOWS THEN
        $IF 32BIT THEN
                DECLARE DYNAMIC LIBRARY "./psg_win_x86"
        $ELSE
            DECLARE DYNAMIC LIBRARY "./psg_win_x64"
            $END IF

        $ELSEIF LINUX THEN
            $ERROR Linux is not supported yet!
        $ELSEIF MACOSX THEN
            DECLARE DYNAMIC LIBRARY "./psg"
        $ELSE
            $ERROR Unknown platform!
        $END IF

        FUNCTION __PSG_IsPlayingMML& ALIAS PSG_IsPlayingMML ' Returns non zero when MML is playing
        SUB __PSG_PlayMML ALIAS PSG_PlayMML (Channel0 AS STRING, Channel1 AS STRING, Channel2 AS STRING, Channel3 AS STRING) ' Play MML. Include 'LibPSG.bas'!
        SUB PSG_SetMasterVolume (BYVAL Volume AS SINGLE) ' Set master volume (0.0 - 1.0)
        SUB PSG_Sound (BYVAL Channel AS _UNSIGNED LONG, BYVAL Frequency AS SINGLE, BYVAL Volume AS _UNSIGNED LONG, BYVAL Waveform AS _UNSIGNED LONG) ' Generate sound
        SUB PSG_Terminate ' Termination function to be called at the end of an application
    END DECLARE
    '-------------------------------------------------------------------------------------------------------------------
$END IF
'-----------------------------------------------------------------------------------------------------------------------
