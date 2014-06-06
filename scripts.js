(function() {
  $('body').prepend('<div id="colors"><a id="grid"></a><a id="green"></a><a id="red"></a></div>');

  $('#grid').click(function() {
    if ($('body').hasClass('grid')) {
      return $('body').removeClass('grid');
    } else {
      return $('body').addClass('grid');
    }
  });

}).call(this);
