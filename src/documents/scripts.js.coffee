# keyboards: array, keys described by length only, 60%
keyboards =
	# US ANSI with super keys
	ANSI: [
		[1,1,1,1,1,1,1,1,1,1,1,1,1,2]
		[1.5,1,1,1,1,1,1,1,1,1,1,1,1,1.5]
		[1.75,1,1,1,1,1,1,1,1,1,1,1,2.25]
		[2.25,1,1,1,1,1,1,1,1,1,1,2.75]
		[1.25,1.25,1.25,6.25,1.25,1.25,1.25,1.25]
	]
	# EU ISO 105 key: 0 represents tall enter
	ISO: [
		[1,1,1,1,1,1,1,1,1,1,1,1,1,2]
		[1.5,1,1,1,1,1,1,1,1,1,1,1,1,0]
		[1.75,1,1,1,1,1,1,1,1,1,1,1,1,0]
		[1.25,1,1,1,1,1,1,1,1,1,1,1,2.75]
		[1.25,1.25,1.25,6.25,1.25,1.25,1.25,1.25]
	]
	# JP tall enter, small backspace
	JP: [
		[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
		[1.5,1,1,1,1,1,1,1,1,1,1,1,1,0]
		[1.75,1,1,1,1,1,1,1,1,1,1,1,1,0]
		[2.25,1,1,1,1,1,1,1,1,1,1,1,1.75]
		[1.5,1,1.5,1.5,2.5,1.5,1,1,1,1,1.5]
	]

qwerty = []
colemak = []

# Set defaults
source = eval($('#source').val())
target = eval($('#target').val())
layout = keyboards[$('#layout').val()]
firstTry = true
mode = 'type'

# Generate on screen keyboard HTML
genKB = (layout) ->
	keyboard = ''
	bigKey = false
	for row, r in layout
		for key, k in row
			newKey = '<li class="key'
			if key == 0 # key width of 0 indicates a big (space filling) key
				newKey += ' big dark'
				key = 15 - row.reduce (x,y) -> x + y # set width to remainder of row
				if bigKey # second row of big key
					newKey += ' bottom'
				else # first row of big key
					bigKey = true
					newKey += ' top'
			if (key > 1 and not (key > 2 and r is 4) and not (r is 1 and k > 1)) or (key < 2 and r is 4) # func keys
				newKey += ' dark layers1'
			else if key > 2 and r is 4 # spacebar
				newKey += ' layers1 spacebar'
			else # normal keys
				newKey += ' layers2'
			newKey += '" id="key'+r+'-'+k+'" style="width:'+(key*57-1)+'px">'
			newKey += '<div class="keyinner" style="width:'+(key*57-13)+'px">'
			# add homing 'ridges' to (qwerty) F and J keys
			if r is 2 and (k is 4 or k is 7)
				newKey += '<div class="homing"></div>'
			for i in [1..6]
				newKey += '<input type="text" class="label layer'+i+'"></input>'
			newKey += '</div><div class="label-cover"></div></li>'
			console.log(newKey)
			keyboard += newKey
	keyboard += '<div id="trackpoint"></div>'
	for i in [1..3]
		keyboard += '<li id="tpButton'+i+'"><input type="text" class="label layer1"></input><div class="stripe"></div></li>'
	return keyboard

$('#edit').click(->
	$('#type,#select').removeClass('on')
	$(this).addClass('on')
	$('#keyboard').removeClass('type').removeClass('select')
	$('#keyboard').addClass('edit')
	mode = 'edit'
	$("#keyboard").selectable("destroy")
	$('#keyboard .key.ui-selected').removeClass('ui-selected')
)

$('#type').click(->
	$('#edit,#select').removeClass('on')
	$(this).addClass('on')
	$('#keyboard').removeClass('edit').removeClass('select')
	$('#keyboard').addClass('type')
	mode = 'type'
	$("#keyboard").selectable("destroy")
	$('#keyboard .key.ui-selected').removeClass('ui-selected')
)

$('#select').click(->
	$('#edit,#type').removeClass('on')
	$(this).addClass('on')
	$('#keyboard').removeClass('edit').removeClass('type')
	$('#keyboard').addClass('select')
	mode = 'select'
	$( "#keyboard" ).selectable({ autoRefresh: false, filter: "li.key", appendTo: "body" })
)

# Initiate sendkeys
sendkeys = (element,keys) ->
	keys = keys.replace(/([^{])\n/g, '$1{enter}') # turn line feeds into explicit break insertions, but not if escaped
	bililiteRange(element).bounds('selection').sendkeys(keys).select()
	element.focus()

# Track whether shift is pressed
shiftPressed = false

# Track lower shelf special characters
lowerShelf = []

# Generate bindings with Keypress.js
bind = (source,target) ->
	# do something

# Emulate keypress to the textarea
keyPress = (key) ->
	# do something

# Inject initial keyboard into DOM
$('#keyboard').html(genKB(layout))
bind(source,target)

# Monitor dropdowns for changes and apply
$('#target').change(->
	target = eval($(this).val())
	$('#keyboard').html(genKB(layout))
	bind(source,target)
)
$('#layout').change(->
	layout = keyboards[$(this).val()]
	$('#keyboard').html(genKB(layout))
	bind(source,target)
)
$('#source').change(->
	source = eval($(this).val())
	bind(source,target)
)
$('#trackpointCheckbox').change(->
	if this.checked
		$('#keyboard').addClass('trackpoint')
	else
		$('#keyboard').removeClass('trackpoint')
)