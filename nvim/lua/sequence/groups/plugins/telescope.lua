-- lua/sequence/groups/plugins/telescope.lua
local M = {}
local utils = require("sequence.utils")

function M.get_highlights(colors)
	return utils.merge_highlights(
		-- Main telescope window
		utils.hl("TelescopeNormal", { fg = colors.fg, bg = colors.grey }),
		utils.hl("TelescopeBorder", { fg = colors.lightgrey, bg = colors.grey }),
		utils.hl("TelescopeTitle", { fg = colors.lightblue, bold = true }),

		-- Prompt
		utils.hl("TelescopePromptNormal", { fg = colors.fg, bg = colors.grey }),
		utils.hl("TelescopePromptBorder", { fg = colors.lightgrey, bg = colors.grey }),
		utils.hl("TelescopePromptTitle", { fg = colors.lightblue, bold = true }),
		utils.hl("TelescopePromptPrefix", { fg = colors.lightred }),
		utils.hl("TelescopePromptCounter", { fg = colors.lightgrey }),

		-- Results
		utils.hl("TelescopeResultsNormal", { fg = colors.fg, bg = colors.grey }),
		utils.hl("TelescopeResultsBorder", { fg = colors.lightgrey, bg = colors.grey }),
		utils.hl("TelescopeResultsTitle", { fg = colors.lightyellow, bold = true }),
		utils.hl("TelescopeResultsComment", { fg = colors.lightgrey }),
		utils.hl("TelescopeResultsNumber", { fg = colors.lightmagenta }),
		utils.hl("TelescopeResultsSpecialComment", { fg = colors.lightcyan }),
		utils.hl("TelescopeResultsIdentifier", { fg = colors.lightblue }),
		utils.hl("TelescopeResultsFunction", { fg = colors.lightyellow }),
		utils.hl("TelescopeResultsConstant", { fg = colors.lightmagenta }),
		utils.hl("TelescopeResultsField", { fg = colors.lightcyan }),
		utils.hl("TelescopeResultsVariable", { fg = colors.fg }),
		utils.hl("TelescopeResultsLineNr", { fg = colors.lightgrey }),
		utils.hl("TelescopeResultsMethod", { fg = colors.lightyellow }),
		utils.hl("TelescopeResultsOperator", { fg = colors.lightcyan }),
		utils.hl("TelescopeResultsStruct", { fg = colors.lightblue }),
		utils.hl("TelescopeResultsClass", { fg = colors.lightblue }),

		-- Preview
		utils.hl("TelescopePreviewNormal", { fg = colors.fg, bg = colors.grey }),
		utils.hl("TelescopePreviewBorder", { fg = colors.lightgrey, bg = colors.grey }),
		utils.hl("TelescopePreviewTitle", { fg = colors.lightgreen, bold = true }),
		utils.hl("TelescopePreviewLine", { bg = colors.bg }),
		utils.hl("TelescopePreviewMatch", { fg = colors.lightmagenta, bold = true }),
		utils.hl("TelescopePreviewPipe", { fg = colors.lightcyan }),
		utils.hl("TelescopePreviewCharDev", { fg = colors.lightyellow }),
		utils.hl("TelescopePreviewDirectory", { fg = colors.lightblue }),
		utils.hl("TelescopePreviewBlock", { fg = colors.lightcyan }),
		utils.hl("TelescopePreviewLink", { fg = colors.lightmagenta }),
		utils.hl("TelescopePreviewSocket", { fg = colors.lightred }),
		utils.hl("TelescopePreviewRead", { fg = colors.lightyellow }),
		utils.hl("TelescopePreviewWrite", { fg = colors.lightred }),
		utils.hl("TelescopePreviewExecute", { fg = colors.lightgreen }),
		utils.hl("TelescopePreviewHyphen", { fg = colors.lightgrey }),
		utils.hl("TelescopePreviewSticky", { fg = colors.lightmagenta }),
		utils.hl("TelescopePreviewSize", { fg = colors.lightblue }),
		utils.hl("TelescopePreviewUser", { fg = colors.lightyellow }),
		utils.hl("TelescopePreviewGroup", { fg = colors.lightcyan }),
		utils.hl("TelescopePreviewDate", { fg = colors.lightgrey }),
		utils.hl("TelescopePreviewMessage", { fg = colors.fg }),
		utils.hl("TelescopePreviewMessageFillchar", { fg = colors.lightgrey }),

		-- Selection and matching
		utils.hl("TelescopeSelection", { fg = colors.fg, bg = colors.bg }),
		utils.hl("TelescopeSelectionCaret", { fg = colors.lightblue }),
		utils.hl("TelescopeMultiSelection", { fg = colors.lightmagenta }),
		utils.hl("TelescopeMultiIcon", { fg = colors.lightblue }),
		utils.hl("TelescopeMatching", { fg = colors.lightmagenta, bold = true }),

		-- Path display
		utils.hl("TelescopePathSeparator", { fg = colors.lightgrey }),

		-- Git integration
		utils.hl("TelescopeResultsDiffAdd", { fg = colors.lightgreen }),
		utils.hl("TelescopeResultsDiffChange", { fg = colors.lightyellow }),
		utils.hl("TelescopeResultsDiffDelete", { fg = colors.lightred }),
		utils.hl("TelescopeResultsDiffUntracked", { fg = colors.lightcyan })
	)
end

return M
