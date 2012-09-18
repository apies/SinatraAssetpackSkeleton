Handlebars.registerHelper("renderSelect", (valChoices, currentVal, cssAttributes) ->
	attrs = []
	attrs += "#{key}=\"#{value}\" " for key, value of cssAttributes.hash
	selectString = "<select #{attrs}>"
	for option in valChoices when option isnt currentVal
		selectString += "<option #{attrs} value=\"#{option}\">#{option}</option>"
	selectString += "<option #{attrs} selected=\"selected\"value=\"#{currentVal}\">#{currentVal}</option>"
	return "#{selectString}</select>"
)