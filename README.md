# What is this?

This is a [QB64](https://github.com/QB64-Phoenix-Edition/QB64pe) library for playing [MML](https://en.wikipedia.org/wiki/Music_Macro_Language) music and sounds using [Macrotune PSG](https://www.posemotion.com/macrotune/). [Macrotune](https://www.posemotion.com/macrotune/) is a [Music Macro Language](https://en.wikipedia.org/wiki/Music_Macro_Language) ([MML](https://en.wikipedia.org/wiki/Music_Macro_Language)) editor to easily create “retro” style music for an app, game or just for fun!

![Screenshot](screenshot.png)

## Features

- Easy plug-&-play API optimized for demos & games
- Works on Windows and macOS (no Linux support yet)
- Demo player that shows how to use the library

## API

```VB
Function PSG_IsPlayingMML&
Sub PSG_PlayMML (Channel0 As String, Channel1 As String, Channel2 As String, Channel3 As String)
Sub PSG_SetMasterVolume (ByVal Volume As Single)
Sub PSG_Sound (ByVal Channel As Unsigned Long, Byval Frequency As Single, Byval Volume As Unsigned Long, Byval Waveform As Unsigned Long)
Sub PSG_Terminate
```
