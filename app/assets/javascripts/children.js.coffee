# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('#chore_due_date').datepicker
    dateFormat: 'yy-mm-dd'

$ ->
	$('ul.incomplete li span.admin').hover (event) ->
		$(this).toggleClass("hover")