local main = require("inspire.main")
local config = require("inspire.config")

local inspire = { options = nil }

function inspire.setup(options)
	inspire.options = config.with_defaults(options)
end

function inspire.show_quote(window)
	main.show_quote(inspire.options, window)
end

function inspire.get_quote()
	return main.get_quote(inspire.options)
end

function inspire.center_text(text, author, window_width, window_height, word_width)
	return main.center_text(text, author, window_width, window_height, word_width)
end

return inspire
