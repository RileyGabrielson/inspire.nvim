local main = {}

local function split_text(text, sep)
	if sep == nil then
		sep = "%s"
	end
	local t = {}
	for str in string.gmatch(text, "([^" .. sep .. "]+)") do
		table.insert(t, str)
	end
	return t
end

local function wrap_text(text, width)
	local words = split_text(text)
	local lines = { "" }

	for _, word in pairs(words) do
		if string.len(lines[#lines]) + string.len(word) < width then
			lines[#lines] = lines[#lines] .. " " .. word
		else
			table.insert(lines, word)
		end
	end

	return lines
end

local function left_pad(line_text, num_spaces)
	local new_text = ""

	for _ = 1, num_spaces do
		new_text = new_text .. " "
	end

	new_text = new_text .. line_text
	return new_text
end

local function center_text(text, author, window_width, window_height, word_width)
	local lines = wrap_text(text, word_width)
	local horizontally_centered_lines = {}
	local largest_width = 0

	for _, line_text in pairs(lines) do
		local num_spaces = (window_width - string.len(line_text)) / 2
		largest_width = math.max(num_spaces, largest_width)
		local new_text = left_pad(line_text, num_spaces)
		table.insert(horizontally_centered_lines, new_text)
	end

	local vertically_centered_lines = {}

	local num_new_lines = (window_height - #horizontally_centered_lines) / 2
	for _ = 1, num_new_lines do
		table.insert(vertically_centered_lines, "")
	end

	for _, line in pairs(horizontally_centered_lines) do
		table.insert(vertically_centered_lines, line)
	end

	table.insert(vertically_centered_lines, "")
	table.insert(
		vertically_centered_lines,
		left_pad("- " .. author .. " -", (window_width - (string.len(author) + 4)) / 2)
	)

	for _ = 1, num_new_lines - 2 do
		table.insert(vertically_centered_lines, "")
	end

	return vertically_centered_lines
end

function main.show_quote(config, window)
	local quote = config.quotes[math.ceil(math.random() * #config.quotes)]

	window = window or vim.api.nvim_get_current_win()
	local buffer = vim.api.nvim_create_buf(false, true)

	local window_width = vim.api.nvim_win_get_width(window)
	local text_width = window_width / 2
	local window_height = vim.api.nvim_win_get_height(window)

	vim.api.nvim_buf_set_lines(
		buffer,
		0,
		0,
		false,
		center_text(quote.text, quote.author, window_width, window_height, text_width)
	)

	vim.api.nvim_set_option_value("readonly", true, { buf = buffer })
	vim.api.nvim_set_option_value("modified", false, { buf = buffer })
	vim.api.nvim_win_set_buf(window, buffer)
end

return main
