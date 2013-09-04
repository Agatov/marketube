$ ->
  $(document).bind 'click', ->
    hideFormErrors()

  $('#send-order').bind 'click', ->
    name = $(@).parent().find('input[name=username]')
    if name.val().length < 2
      name.css 'border', '1px solid red'
      return false

    phone = $(@).parent().find('input[name=phone]')
    if phone.val().length < 7
      phone.css 'border', '1px solid red'
      return false

    $.post '/orders', {'order[username]': $('input[name=username]').val(), 'order[phone]': $('input[name=phone]').val()}, (data) =>

    $('.form-body').hide()
    $('.form-success').show()

    yaCounter22231843.reachGoal('new_order')

    false

window.hideFormErrors = ->
  $('input').attr 'style', ''

