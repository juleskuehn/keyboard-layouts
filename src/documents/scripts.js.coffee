# create buttons (hidden for now)
$('body').prepend('<div id="colors"><a id="grid"></a><a id="green"></a><a id="red"></a></div>')

# show / hide ruler lines
$('#grid').click(->
	if $('body').hasClass('grid')
		$('body').removeClass('grid')
	else
		$('body').addClass('grid')
)
