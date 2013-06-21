$ ->

  $('#submit-order').bind 'click', ->

    $.post(
      '/orders',
      {
        'order[username]': $('input[name=username]').val()
        'order[phone]': $('input[name=phone]').val()
        'order[email]': $('input[name=email]').val()
      },
      (data) =>
        if data.status == 'ok'
          alert 'okokok'
    )