keyboard-layouts
================

<img width="805" alt="screenshot" src="https://user-images.githubusercontent.com/1150048/172737371-f40a9909-d086-4c59-b259-996a370514e5.png">

[Try alternate keyboard layouts like Colemak and Dvorak in your browser!](http://juleskuehn.github.io/keyboard-layouts/)

## Supported layouts

- QWERTY
- AZERTY
- Colemak
- Dvorak
- Programmer Dvorak
- Workman
- Norman
- Bépo
- Arensito
- QWPR
- Asset
- MTGAP 2.0
- Klauser
- Capewell QWERF
- Capewell Dvorak
- Capewell
- Minimak 4, 8, 12
- Tarmak 1, 2, 3, 4
- Carpalx QFMLWY
- Carpalx QGMLWB
- Carpalx QGMLWY
- Carpalx QWKRFY
- Carpalx QWYRFM
- Carpalx Q
- Carpalx TNWMLC

## Limitations
This keyboard layout testing tool was designed for English layouts and ANSI keyboards.  While I have attempted to accomodate non-English layouts, please be aware of the following limitations:
- Dead keys are not recognized, nor are the characters produced with them.
 - Support for capturing and emulating dead keys could be added in the future.
- AltGr is not supported, preventing further implementation of NEO.
 - Browsers cannot differentiate between the two Alt, Shift, Ctrl, and Super keys.
- Keys whose location vary between ISO and ANSI have been purposefully omitted.

## Known bugs
- "-" and "=" keys do not fire for some users (I cannot replicate this behaviour).
- "{" will not print when target layout is Programmer Dvorak.
- Strange behaviour when source layout has a non-numeric number row (ex.&nbsp;Programmer Dvorak, AZERTY, bépo)
