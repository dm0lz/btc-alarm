# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
	$('a.getBtc').click ->
		$.ajax({
			url: "http://blockchain.info/stats?format=json?jsoncallback=ttt",
			context: document.body,
			type: "GET",
			dataType: 'jsonp',
			#contentType: 'text/plain'
			#crossDomain: true,
			#jsonp: false
			success: (data) ->
				#a = JSON.parse data
				console.log data
				#console.log eval("(" + data + ")")
				#$('.displayRate').append(a)
				#alert data
		})#.done (data) ->
			#returnData = data
			#console.log(returnData)
			#$('.displayRate').append(returnData)

