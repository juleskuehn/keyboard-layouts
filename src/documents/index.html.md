---
title: "Keyboard Layouts"
layout: "keyboard"
---


##Limitations
This keyboard layout testing tool was designed for English layouts and ANSI keyboards.  While I have attempted to accomodate non-English layouts, please be aware of the following limitations:
- Dead keys are not recognized, nor are the characters produced with them.
 - Support for capturing and emulating dead keys could be added in the future.
- AltGr is not supported, preventing further implementation of NEO.
 - Browsers cannot differentiate between the two Alt, Shift, Ctrl, and Super keys.
- Keys whose location vary between ISO and ANSI have been purposefully omitted.

##Known bugs
- "-" and "=" keys do not fire for some users (I cannot replicate this behaviour).
- "{" will not print when target layout is Programmer Dvorak.
- Strange behaviour when source layout has a non-numeric number row (ex.&nbsp;Programmer Dvorak, AZERTY, bépo)

##What's next?
The branch "morekeys" on GitHub aims to address many of the above issues, while adding several features:
- ISO, ANSI, and Japanese layouts for the on-screen keyboard
 - Some thumb keys in the Japanese layout are not passed to the browser.
- Editable keyboard layouts (type desired characters on keycap labels)
- Support for multiple layers with selectable modifier keys
- Trackpoint buttons as thumb keys

##Contribute
Report bugs, request features and contribute layouts on [GitHub](https://github.com/mikekuehn/keyboard-layouts/).