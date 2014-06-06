---
title: "Keyboard Layouts"
layout: "post"
date: 2014-06-03
---

<div id="keyStuff">
	<div id="keyboard"></div>
	<br />
	<label>Your keyboard layout:</label>
	<select id="source">
		<option value="qwerty" selected>QWERTY</option>
		<option value="azerty">AZERTY</option>
		<option value="dvorak">Dvorak</option>
		<option value="pdvorak">Programmer Dvorak</option>
		<option value="colemak">Colemak</option>
		<option value="bepo">bépo</option>
		<option value="workman">Workman</option>
		<option value="norman">Norman</option>
		<option value="arensito">Arensito Simple</option>
		<option value="qwpr">qwpr</option>
		<option value="asset">Asset</option>
		<option value="mtgap2">MTGAP 2.0</option>
		<option value="klausler">Klauser's evolver</option>
		<option value="capewell">Capewell</option>
		<option value="cqwerf">Capewell-QWERF</option>
		<option value="cdvorak">Capewell-Dvorak</option>
		<option value="minimak4">Minimak 4</option>
		<option value="minimak8">Minimak 8</option>
		<option value="minimak12">Minimak 12</option>
		<option value="tarmak1">Tarmak 1</option>
		<option value="tarmak2">Tarmak 2</option>
		<option value="tarmak3">Tarmak 3</option>
		<option value="tarmak4">Tarmak 4</option>
		<option value="qfmlwy">Carpalx QFMLWY</option>
		<option value="qgmlwb">Carpalx QGMLWB</option>
		<option value="qgmlwy">Carpalx QGMLWY</option>
		<option value="qwkrfy">Carpalx QWKRFY</option>
		<option value="qwyrfm">Carpalx QWYRFM</option>
		<option value="carpalxq">CarpalxQ</option>
		<option value="tnwmlc">Carpalx TNWMLC</option>
	</select>
	<label>Try this layout (above):</label>
	<select id="target">
		<option value="qwerty">QWERTY</option>
		<option value="azerty">AZERTY</option>
		<option value="dvorak">Dvorak</option>
		<option value="pdvorak">Programmer Dvorak</option>
		<option value="colemak" selected>Colemak</option>
		<option value="bepo">bépo</option>
		<option value="workman">Workman</option>
		<option value="norman">Norman</option>
		<option value="arensito">Arensito Simple</option>
		<option value="qwpr">qwpr</option>
		<option value="asset">Asset</option>
		<option value="mtgap2">MTGAP 2.0</option>
		<option value="klausler">Klauser's evolver</option>
		<option value="capewell">Capewell</option>
		<option value="cqwerf">Capewell-QWERF</option>
		<option value="cdvorak">Capewell-Dvorak</option>
		<option value="minimak4">Minimak 4</option>
		<option value="minimak8">Minimak 8</option>
		<option value="minimak12">Minimak 12</option>
		<option value="tarmak1">Tarmak 1</option>
		<option value="tarmak2">Tarmak 2</option>
		<option value="tarmak3">Tarmak 3</option>
		<option value="tarmak4">Tarmak 4</option>
		<option value="qfmlwy">Carpalx QFMLWY</option>
		<option value="qgmlwb">Carpalx QGMLWB</option>
		<option value="qgmlwy">Carpalx QGMLWY</option>
		<option value="qwkrfy">Carpalx QWKRFY</option>
		<option value="qwyrfm">Carpalx QWYRFM</option>
		<option value="carpalxq">CarpalxQ</option>
		<option value="tnwmlc">Carpalx TNWMLC</option>
	</select>
	<textarea id="textarea">Try a new keyboard layout!  Type something while looking at the keyboard above.</textarea>
</div>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="../assets/keypress.js"></script>
<script src="/vendor/bililiteRange.js"></script>
<script type="text/javascript" src="../assets/keyboard.js"></script>
<link rel="stylesheet" href="../assets/keyboard.css" type="text/css" />

##Background

I grew up using QWERTY, typing 100 words per minute with accuracy.  Repetitive strain injury (aka *carpal tunnel syndrome*) forced me to search for an ergonomic alternative.  I settled on [Colemak](http://colemak.com/), a partially optimized layout that emphasises ease of transition from QWERTY and maintains the positions of common shortcut keys (ZXCV).

##Hard vs. soft layouts

The layouts you can try here are examples of **soft layouts** - that is, they map the keycodes sent by your keyboard to specific characters.  An example of a hard layout would be the keyboard you are using.  The ANSI hard layout is shown above as a point of reference for the various soft layouts imposed on it here.

Alternative hard layouts provide ergonomic benefits beyond the keymapping provided by soft layouts such as Colemak, but the effectiveness of a hard layout is tied to the soft layout imposed on it, and vice-versa.  The [Maltron](http://www.maltron.com/) keyboard layout incorporates both a physical (hard) layout and a soft layout.

Since hard layouts cannot be emulated in software, you will have to acquire a different keyboard to try it.