ready = ->
  $('.timepicker').timepicker
    timeFormat: 'h:mm p'
    dropdown: true
    scrollbar: true

$(document).on('turbolinks:load',ready)
