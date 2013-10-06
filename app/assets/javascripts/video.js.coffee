$ ->

  $('#intro-video').bind 'click', ->
    window.show_video("#intro-video-html")
    yaCounter22231843.reachGoal('intro-video-click')

  $('.expert-video.guberniev').bind 'click', -> window.show_video("#guber-video")
  $('.expert-video.dashkiev').bind 'click', -> window.show_video("#dashkiev-video")

  $('.ipad').bind 'click', ->
    window.show_video("#action-video")
    yaCounter22231843.reachGoal('action-video-click')




window.show_video = (template_id) ->

  $('.video-modal-bg').bind 'click', ->
    $('.video-modal').html('')
    $('.video-modal').hide()
    $('.video-modal-bg').hide()


  $('.video-modal-bg').show()
  $('.video-modal').html($(template_id).html())
  $('.video-modal').show()