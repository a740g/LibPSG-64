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

$If LIBPSG_BAS = UNDEFINED Then
    $Let LIBPSG_BAS = TRUE
    '-------------------------------------------------------------------------------------------------------------------
    ' FUNCTIONS & SUBROUTINES
    '-------------------------------------------------------------------------------------------------------------------
    $Checking:Off

    Function PSG_IsPlayingMML%%
        PSG_IsPlayingMML = __PSG_IsPlayingMML <> 0 ' this will return any non-zero value as -1
    End Function

    Sub PSG_PlayMML (Channel0 As String, Channel1 As String, Channel2 As String, Channel3 As String)
        __PSG_PlayMML Channel0 + Chr$(0), Channel1 + Chr$(0), Channel2 + Chr$(0), Channel3 + Chr$(0) ' we need to null terminate all strings
    End Sub

    $Checking:On
    '-------------------------------------------------------------------------------------------------------------------
$End If
'-----------------------------------------------------------------------------------------------------------------------
