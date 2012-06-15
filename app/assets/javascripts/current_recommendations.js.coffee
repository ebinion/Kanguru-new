# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $("#current_location").click ->
    $(this).trigger("blur")
    alert "Let's stick with Chicago for now. \n(Other cities coming soon.)"