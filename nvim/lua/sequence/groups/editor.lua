-- lua/sequence/groups/editor.lua
local M = {}
local utils = require("sequence.utils")

function M.get_highlights(colors)
	local config = require("sequence.config")
	local transparent = config.options.transparent

	return utils.merge_highlights(
		-- Normal text
		utils.hl("Normal", { fg = colors.fg, bg = transparent and colors.none or colors.bg }),
		utils.hl("NormalFloat", { fg = colors.fg, bg = transparent and colors.none or colors.grey }),
		utils.hl("NormalNC", { fg = colors.lightgrey, bg = transparent and colors.none or colors.bg }),

		-- Cursor and lines
		utils.hl("Cursor", { fg = colors.bg, bg = colors.fg }),
		utils.hl("CursorLine", { bg = colors.grey }),
		utils.hl("CursorLineNr", { fg = colors.lightgrey, bold = true }),
		utils.hl("LineNr", { fg = colors.grey }),
		utils.hl("SignColumn", { bg = transparent and colors.none or colors.bg }),
		utils.hl("ColorColumn", { bg = colors.grey }),

		-- Visual selection
		utils.hl("Visual", { bg = colors.visual }),
		utils.hl("VisualNOS", { bg = colors.visual }),

		-- Search
		utils.hl("Search", { fg = colors.bg, bg = colors.search }),
		utils.hl("IncSearch", { fg = colors.bg, bg = colors.match }),
		utils.hl("CurSearch", { fg = colors.bg, bg = colors.match }),

		-- Folds
		utils.hl("Folded", { fg = colors.lightgrey, bg = colors.grey }),
		utils.hl("FoldColumn", { fg = colors.lightgrey, bg = transparent and colors.none or colors.bg }),

		-- Popup menu
		utils.hl("Pmenu", { fg = colors.fg, bg = colors.grey }),
		utils.hl("PmenuSel", { fg = colors.bg, bg = colors.lightgrey }),
		utils.hl("PmenuSbar", { bg = colors.grey }),
		utils.hl("PmenuThumb", { bg = colors.lightgrey }),

		-- Status line
		utils.hl("StatusLine", { fg = colors.lightgrey, bg = colors.none }),
		utils.hl("StatusLineNC", { fg = colors.lightgrey, bg = colors.grey }),

		-- Tabs
		utils.hl("TabLine", { fg = colors.lightgrey, bg = colors.grey }),
		utils.hl("TabLineFill", { bg = colors.grey }),
		utils.hl("TabLineSel", { fg = colors.fg, bg = colors.bg }),

		-- Messages
		utils.hl("ErrorMsg", { fg = colors.error }),
		utils.hl("WarningMsg", { fg = colors.warning }),
		utils.hl("ModeMsg", { fg = colors.info }),
		utils.hl("MoreMsg", { fg = colors.info }),
		utils.hl("Question", { fg = colors.lightblue }),

		-- Diff
		utils.hl("DiffAdd", { fg = colors.lightgreen, bg = colors.grey }),
		utils.hl("DiffChange", { fg = colors.lightyellow, bg = colors.grey }),
		utils.hl("DiffDelete", { fg = colors.lightred, bg = colors.grey }),
		utils.hl("DiffText", { fg = colors.lightblue, bg = colors.grey }),

		-- Spell
		utils.hl("SpellBad", { fg = colors.error, undercurl = true }),
		utils.hl("SpellCap", { fg = colors.warning, undercurl = true }),
		utils.hl("SpellRare", { fg = colors.lightmagenta, undercurl = true }),
		utils.hl("SpellLocal", { fg = colors.lightcyan, undercurl = true }),

		-- Misc
		utils.hl("EndOfBuffer", { fg = colors.grey }),
		utils.hl("NonText", { fg = colors.lightgrey }),
		utils.hl("Whitespace", { fg = colors.lightgrey }),
		utils.hl("SpecialKey", { fg = colors.lightgrey }),
		utils.hl("Directory", { fg = colors.lightblue }),
		utils.hl("Title", { fg = colors.lightblue, bold = true }),
		utils.hl("WildMenu", { fg = colors.bg, bg = colors.lightblue })
	)
end

return M
