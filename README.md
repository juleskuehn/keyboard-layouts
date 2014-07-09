keyboard-layouts
================

Try keyboard layouts in browser: http://blog.mikekuehn.ca/keyboard-layouts/

##Installation

```
git clone https://github.com/mikekuehn/keyboard-layouts
cd keyboard-layouts
npm install
docpad run
```

##Supported layouts

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

##Layouts to add

- neo2
- adnw
- qwertz

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

##Possible features

- Custom hard layouts (ISO, ErgoDox, TypeMatrix, Maltron...)
- Colorized keys per finger
- Import/Export/Edit layouts
- Typing tutor mode
- Ghost typer mode
- Sorting layouts by language, popularity...