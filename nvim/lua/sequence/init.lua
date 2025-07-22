-- lua/sequence/init.lua
local M = {}

local config = require("sequence.config")
local cache = {}

function M.setup(user_config)
	config.setup(user_config)
	cache = {} -- Clear cache on config change
	M.load()
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

local function show_hl_for_visual()
	-- get visual marks '< and '>
	local s = vim.fn.getpos("'<")
	local e = vim.fn.getpos("'>")
	-- s = {bufnum, lnum_start, col_start, off}
	-- e = {bufnum, lnum_end,   col_end,   off}
	local l1, c1 = s[2], s[3]
	local l2, c2 = e[2], e[3]

	local groups = {}
	for l = l1, l2 do
		local line = vim.api.nvim_buf_get_lines(0, l - 1, l, false)[1]
		local col_start = (l == l1) and c1 or 1
		local col_end = (l == l2) and c2 or #line
		for col = col_start, col_end do
			for _, id in ipairs(vim.fn.synstack(l, col)) do
				groups[vim.fn.synIDattr(id, "name")] = true
			end
		end
	end

	local out = {}
	for name in pairs(groups) do
		table.insert(out, name)
	end
	table.sort(out)
	print(vim.inspect(out))
end

-- map in visual mode:
vim.api.nvim_set_keymap("x", "<leader>g", [[:<C-u>lua show_hl_for_visual()<CR>]], { noremap = true, silent = true })

return M
