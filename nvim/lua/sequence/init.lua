-- lua/sequence/init.lua
local M = {}

local config = require("sequence.config")
local cache = {}

function M.setup(user_config)
	config.setup(user_config)
	cache = {} -- Clear cache on config change
end

function M.load()
	-- Performance: check cache
	if cache.loaded and not config.options.dev then
		return
	end

	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.opt.termguicolors = true
	vim.g.colors_name = "sequence"

	local colors = require("sequence.colors")
	local groups = require("sequence.groups")
	local highlights = groups.get_highlights(colors)

	-- Batch set highlights for performance
	for group, opts in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, opts)
	end

	cache.loaded = true
end

M.load()

return M
