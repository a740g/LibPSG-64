'---------------------------------------------------------------------------------------------------------
' A library for playing MML music and sounds using Macrotune PSG
' Copyright (c) 2023 Samuel Gomes
'
' This uses Macrotune PSG by PoseMotion (https://www.posemotion.com/macrotune/)
' Macrotune is a Music Macro Language (MML) editor that allows you to easily create "retro" style music!
' Copyright (c) 2015 Wilbert Brants & J. Baker
'---------------------------------------------------------------------------------------------------------

'---------------------------------------------------------------------------------------------------------
' HEADER FILES
'---------------------------------------------------------------------------------------------------------
'$Include:'./LibPSG.bi'
'---------------------------------------------------------------------------------------------------------

$If LIBPSG_BAS = UNDEFINED Then
    $Let LIBPSG_BAS = TRUE
    '-----------------------------------------------------------------------------------------------------
    ' FUNCTIONS & SUBROUTINES
    '-----------------------------------------------------------------------------------------------------
    ' QB64 wrapper for __PSG_PlayMML()
    Sub PSG_PlayMML (Channel0 As String, Channel1 As String, Channel2 As String, Channel3 As String)
        __PSG_PlayMML Channel0 + Chr$(NULL), Channel1 + Chr$(NULL), Channel2 + Chr$(NULL), Channel3 + Chr$(NULL)
    End Sub
    '-----------------------------------------------------------------------------------------------------
$End If
'---------------------------------------------------------------------------------------------------------
