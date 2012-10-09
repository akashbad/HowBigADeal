# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
	$('#search-input').focus()


animatePlaceholder = (string, inputElem, index) ->
	printString = ''
	string = string.split('')
	$.each string, (index, char) =>
		printString += char
		pausecomp(100)
		inputElem.delay(1000).queue ->
			inputElem.attr('placeholder', printString)



pausecomp = (ms) ->
	ms += new Date().getTime()
	date = newDate().getTime while date < ms 
 