$ ->

  slides = ['first-slide', 'second-slide', 'third-slide', 'fourth-slide', 'fifth-slide', 'sixth-slide']
  slide_id = -1


  $('.next-slide-link').bind 'click', ->
    slide_id = 0

    $(".slide").hide()
    $(".slide.#{slides[slide_id]}").show()

    $(".icon").removeClass('active')
    $(".icon[rel=#{slides[slide_id]}]").addClass('active')



  $('.next-slide').bind 'click', ->

    if slide_id == 5
      slide_id = 0
    else
      slide_id += 1

    $(".slide").hide()
    $(".slide.#{slides[slide_id]}").show()

    $(".icon").removeClass('active')
    $(".icon[rel=#{slides[slide_id]}]").addClass('active')


  $('.presentation-icons .icon').bind 'click', ->
    $('.slide').hide()
    $(".slide.#{$(@).attr('rel')}").show()

    $('.icon').removeClass('active')
    $(@).addClass('active')

    slide_id = slides.indexOf($(@).attr('rel'))