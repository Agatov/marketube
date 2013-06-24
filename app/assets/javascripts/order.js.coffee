$ ->

  $('#submit-order').bind 'click', ->

    $.post(
      '/orders',
      {
        'order[username]': $('#top-form input[name=username]').val()
        'order[phone]': $('#top-form input[name=phone]').val()
        'order[email]': $('#top-form input[name=email]').val()
      },
      (data) =>

        if data.status == 'ok'
          $('#top-overlay').show()
    )


  $('#bottom-order-button').bind 'click', ->

    $.post(
      '/orders',
    {
      'order[username]': $('#bottom-form input[name=username]').val()
      'order[phone]': $('#bottom-form input[name=phone]').val()
      'order[email]': $('#bottom-form input[name=email]').val()
    },
    (data) =>

      if data.status == 'ok'
        $('#bottom-overlay').show()
    )

    false