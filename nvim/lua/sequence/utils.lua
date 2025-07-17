-- lua/sequence/utils.lua
local M = {}

-- Get all available plugin files automatically
function M.get_available_plugins()
	local plugins = {}
	local plugin_dir = vim.fn.stdpath("data") .. "/lazy/sequence.nvim/lua/sequence/groups/plugins"

	-- Try different possible paths
	local possible_paths = {
		vim.fn.stdpath("data") .. "/lazy/sequence.nvim/lua/sequence/groups/plugins",
		vim.fn.stdpath("data") .. "/site/pack/packer/start/sequence.nvim/lua/sequence/groups/plugins",
		vim.fn.stdpath("config") .. "/lua/sequence/groups/plugins",
		debug.getinfo(1, "S").source:sub(2):match("(.*/)") .. "../groups/plugins",
	}

	for _, path in ipairs(possible_paths) do
		local handle = vim.loop.fs_scandir(path)
		if handle then
			while true do
				local name, type = vim.loop.fs_scandir_next(handle)
				if not name then
					break
				end

				if type == "file" and name:match("%.lua$") then
					local plugin_name = name:gsub("%.lua$", "")
					-- Convert filename to plugin name (e.g., "nvim-tree" from "nvim-tree.lua")
					plugins[plugin_name] = true
				end
			end
			break -- Stop after finding the first valid directory
		end
	end

	return plugins
end

-- Enhanced plugin detection with common plugin patterns
function M.is_plugin_available(plugin_name)
	local detection_patterns = {
		-- Core plugins
		telescope = function()
			return pcall(require, "telescope") or vim.fn.exists("*telescope#builtin#find_files") == 1
		end,

		["nvim-tree"] = function()
			return pcall(require, "nvim-tree") or vim.g.loaded_tree == 1
		end,

		gitsigns = function()
			return pcall(require, "gitsigns") or vim.g.loaded_gitsigns == 1
		end,

		lualine = function()
			return pcall(require, "lualine") or vim.g.loaded_lualine == 1
		end,

		["which-key"] = function()
			return pcall(require, "which-key") or vim.g.loaded_which_key == 1
		end,

		["indent-blankline"] = function()
			return pcall(require, "ibl") or pcall(require, "indent_blankline") or vim.g.loaded_indent_blankline == 1
		end,

		-- Add more common plugins
		["neo-tree"] = function()
			return pcall(require, "neo-tree")
		end,

		["nvim-cmp"] = function()
			return pcall(require, "cmp")
		end,

		["bufferline"] = function()
			return pcall(require, "bufferline")
		end,

		["alpha-nvim"] = function()
			return pcall(require, "alpha")
		end,

		["toggleterm"] = function()
			return pcall(require, "toggleterm")
		end,

		["nvim-notify"] = function()
			return pcall(require, "notify")
		end,

		["trouble"] = function()
			return pcall(require, "trouble")
		end,

		["mini-nvim"] = function()
			return pcall(require, "mini")
		end,

		["hop"] = function()
			return pcall(require, "hop")
		end,

		["leap"] = function()
			return pcall(require, "leap")
		end,
	}

	-- Use custom detection if available
	if detection_patterns[plugin_name] then
		return detection_patterns[plugin_name]()
	end

	-- Generic detection (try to require the plugin)
	local module_variations = {
		plugin_name,
		plugin_name:gsub("%-", "_"),
		plugin_name:gsub("%-", "."),
		plugin_name:match("(.-)%-") or plugin_name, -- First part before hyphen
	}

	for _, module in ipairs(module_variations) do
		if pcall(require, module) then
			return true
		end
	end

	return false
end

-- Load plugin highlights conditionally
function M.load_plugin(plugin_name, colors)
	local config = require("sequence.config")

	-- Skip if disabled in config
	if config.options.integrations[plugin_name] == false then
		return {}
	end

	-- Skip if plugin isn't available (only if auto_detect is enabled)
	if config.options.integrations.auto_detect and not M.is_plugin_available(plugin_name) then
		return {}
	end

	local ok, plugin_highlights = pcall(require, "sequence.groups.plugins." .. plugin_name)
	if not ok then
		if config.options.debug then
			vim.notify(
				"Failed to load highlights for " .. plugin_name .. ": " .. tostring(plugin_highlights),
				vim.log.levels.DEBUG
			)
		end
		return {}
	end

	if config.options.debug then
		vim.notify("Loaded highlights for " .. plugin_name, vim.log.levels.DEBUG)
	end

	return plugin_highlights.get_highlights(colors)
end

-- Rest of your existing utils functions...
function M.hl(group, opts)
	return { [group] = opts }
end

function M.merge_highlights(...)
	local result = {}
	for _, highlights in ipairs({ ... }) do
		for group, opts in pairs(highlights) do
			result[group] = opts
		end
	end
	return result
end

function M.apply_style(base_opts, style_name)
	local config = require("sequence.config")
	local style = config.options.styles[style_name]

	if style then
		return vim.tbl_deep_extend("force", base_opts, style)
	end

	return base_opts
end

return M
