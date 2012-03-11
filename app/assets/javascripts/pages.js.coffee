$ ->
  lis = $('#main-area-footer nav ul').children('li')
  li_widths = (lis.width() + 20) * lis.length
  $('#main-area-footer nav ul').css(
    'width', li_widths
  )
