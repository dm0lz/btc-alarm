# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
	$('a.getBtc').click ->
		$.ajax({
			url: "http://api.bitcoincharts.com/v1/weighted_prices.json",
			context: document.body,
			type: "GET",
			dataType: 'jsonp',
			crossDomain: true,
			jsonp: false
			#success: (data) ->
			#	console.log data
		}).done (data) ->
			returnData = data
			console.log(returnData)
			#$('.displayRate').append(returnData)