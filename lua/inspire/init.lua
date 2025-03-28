--[[ this module exposes the interface of lua functions:
define here the lua functions that activate the plugin ]]

local main = require("inspire.main")
local config = require("inspire.config")

local inspire = { options = nil }

function inspire.setup(options)
	inspire.options = config.with_defaults(options)
	vim.cmd("nnoremap <Plug>(ShowQuote) :lua require('inspire').show_quote()<CR>")
end

function inspire.show_quote(window)
	main.show_quote(inspire.options, window)
end

return inspire
