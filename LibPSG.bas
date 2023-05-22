'-----------------------------------------------------------------------------------------------------------------------
' A library for playing MML music and sounds using Macrotune PSG
' Copyright (c) 2023 Samuel Gomes
'
' This uses Macrotune PSG by PoseMotion (https://www.posemotion.com/macrotune/)
' Macrotune is a Music Macro Language (MML) editor that allows you to easily create "retro" style music!
' Copyright (c) 2015 Wilbert Brants & J. Baker
'-----------------------------------------------------------------------------------------------------------------------

'-----------------------------------------------------------------------------------------------------------------------
' HEADER FILES
'-----------------------------------------------------------------------------------------------------------------------
'$INCLUDE:'LibPSG.bi'
'-----------------------------------------------------------------------------------------------------------------------

$IF LIBPSG_BAS = UNDEFINED THEN
    $LET LIBPSG_BAS = TRUE
    '-------------------------------------------------------------------------------------------------------------------
    ' FUNCTIONS & SUBROUTINES
    '-------------------------------------------------------------------------------------------------------------------
    $CHECKING:OFF

    FUNCTION PSG_IsPlayingMML%%
        PSG_IsPlayingMML = __PSG_IsPlayingMML <> 0 ' this will return any non-zero value as -1
    END FUNCTION

    SUB PSG_PlayMML (Channel0 AS STRING, Channel1 AS STRING, Channel2 AS STRING, Channel3 AS STRING)
        __PSG_PlayMML Channel0 + CHR$(0), Channel1 + CHR$(0), Channel2 + CHR$(0), Channel3 + CHR$(0) ' we need to null terminate all strings
    END SUB

    $CHECKING:ON
    '-------------------------------------------------------------------------------------------------------------------
$END IF
'-----------------------------------------------------------------------------------------------------------------------
