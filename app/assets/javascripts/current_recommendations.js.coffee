# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $("#current_location").click ->
    $(this).trigger("blur")
    alert "Using Your Current Location" # Let's stick with Chicago for now. \n(Other cities coming soon.)
    
  $(".confirm_exit").click (e) ->
    if !confirm("You are leaving are app. Click cancel to stay here.")
      e.preventDefault()
  $("#skip").click (e) ->
    e.preventDefault()
    window.location = "/recommendation"
  
  rec = $("#recommendations")
  
  $(".recommendation.train .btn-left").click (e) ->
    $(rec).css("left", 0)
    
  $(".recommendation.bike .btn-left").click (e) ->
    $(rec).css("left", "-100%")
    
  $(".recommendation.train .btn-right").click (e) ->
    $(rec).css("left", "-200%")

  $(".recommendation.car .btn-right").click (e) ->
    $(rec).css("left", "-100%")