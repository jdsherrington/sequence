-- lua/sequence/config.lua
local M = {}

-- Generate default integration settings
local function generate_default_integrations()
	local utils = require("sequence.utils")
	local available_plugins = utils.get_available_plugins()
	local defaults = { auto_detect = true }

	-- Set all discovered plugins to true by default
	for plugin_name, _ in pairs(available_plugins) do
		defaults[plugin_name] = true
	end

	return defaults
end

M.options = {
	transparent = false,
	dim_inactive = false,
	styles = {
		comments = { italic = true },
		keywords = { bold = false },
		functions = { bold = false },
		strings = { italic = false },
	},
	integrations = {}, -- Will be populated by generate_default_integrations()
	custom_highlights = {},
	debug = false,
	dev = false,
}

function M.setup(user_config)
	-- Generate default integrations first
	M.options.integrations = generate_default_integrations()

	-- Then merge with user config
	M.options = vim.tbl_deep_extend("force", M.options, user_config or {})

	-- Auto-detect plugins if enabled
	if M.options.integrations.auto_detect then
		local utils = require("sequence.utils")
		local available_plugins = utils.get_available_plugins()

		for plugin_name, _ in pairs(available_plugins) do
			-- Only auto-detect if not explicitly set by user
			if M.options.integrations[plugin_name] == nil then
				M.options.integrations[plugin_name] = utils.is_plugin_available(plugin_name)
			end
		end
	end
end

return M
