-- lua/sequence/groups/init.lua
local M = {}
local utils = require("sequence.utils")

function M.get_highlights(colors)
	local highlights = {}

	-- Core highlights (always loaded)
	local core_modules = {
		"editor",
		"syntax",
		"treesitter",
		"lsp",
	}

	for _, module in ipairs(core_modules) do
		local ok, module_highlights = pcall(require, "sequence.groups." .. module)
		if ok then
			highlights = utils.merge_highlights(highlights, module_highlights.get_highlights(colors))
		else
			if require("sequence.config").options.debug then
				vim.notify("Failed to load core module: " .. module, vim.log.levels.WARN)
			end
		end
	end

	-- Plugin integrations (auto-discovered)
	local available_plugins = utils.get_available_plugins()
	local loaded_count = 0

	for plugin_name, _ in pairs(available_plugins) do
		local plugin_highlights = utils.load_plugin(plugin_name, colors)
		if next(plugin_highlights) then -- Only merge if not empty
			highlights = utils.merge_highlights(highlights, plugin_highlights)
			loaded_count = loaded_count + 1
		end
	end

	if require("sequence.config").options.debug then
		vim.notify(string.format("Loaded %d plugin integrations", loaded_count), vim.log.levels.INFO)
	end

	-- Apply user custom highlights
	local config = require("sequence.config")
	highlights = utils.merge_highlights(highlights, config.options.custom_highlights)

	return highlights
end

return M
