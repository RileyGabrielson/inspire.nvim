local config = {}

function config.with_defaults(options)
	return {
		quotes = options.quotes or require("inspire.quotes"),
		mode = options.mode or "daily",
	}
end

return config
