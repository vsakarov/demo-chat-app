# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  update_messages = ->
    room_id = $('#room').attr('data-id')
    last_id = $('#room tr:last').attr('data-id')
    $.getScript('/rooms/'+room_id+'/messages.js?last='+last_id)
    setTimeout update_messages, 2000

  setTimeout update_messages, 1000
