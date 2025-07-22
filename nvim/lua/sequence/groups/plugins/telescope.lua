-- lua/sequence/groups/plugins/telescope.lua
local M = {}
local utils = require("sequence.utils")

function M.get_highlights(colors)
	return utils.merge_highlights(
		-- Main telescope window
		utils.hl("TelescopeNormal", { fg = colors.fg, bg = colors.grey }),
		utils.hl("TelescopeBorder", { fg = colors.lightgrey, bg = colors.grey }),
		utils.hl("TelescopeTitle", { fg = colors.blue, bold = true }),

		-- Prompt
		utils.hl("TelescopePromptNormal", { fg = colors.fg, bg = colors.grey }),
		utils.hl("TelescopePromptBorder", { fg = colors.lightgrey, bg = colors.grey }),
		utils.hl("TelescopePromptTitle", { fg = colors.blue, bold = true }),
		utils.hl("TelescopePromptPrefix", { fg = colors.red }),
		utils.hl("TelescopePromptCounter", { fg = colors.lightgrey }),

		-- Results
		utils.hl("TelescopeResultsNormal", { fg = colors.fg, bg = colors.grey }),
		utils.hl("TelescopeResultsBorder", { fg = colors.lightgrey, bg = colors.grey }),
		utils.hl("TelescopeResultsTitle", { fg = colors.yellow, bold = true }),
		utils.hl("TelescopeResultsComment", { fg = colors.lightgrey }),
		utils.hl("TelescopeResultsNumber", { fg = colors.yellow }),
		utils.hl("TelescopeResultsSpecialComment", { fg = colors.lightcyan }),
		utils.hl("TelescopeResultsIdentifier", { fg = colors.lightblue }),
		utils.hl("TelescopeResultsFunction", { fg = colors.yellow }),
		utils.hl("TelescopeResultsConstant", { fg = colors.yellow }),
		utils.hl("TelescopeResultsField", { fg = colors.cyan }),
		utils.hl("TelescopeResultsVariable", { fg = colors.lightblue }),
		utils.hl("TelescopeResultsLineNr", { fg = colors.lightgrey }),
		utils.hl("TelescopeResultsMethod", { fg = colors.red }),
		utils.hl("TelescopeResultsOperator", { fg = colors.cyan }),
		utils.hl("TelescopeResultsStruct", { fg = colors.blue }),
		utils.hl("TelescopeResultsClass", { fg = colors.blue }),

		-- Preview
		utils.hl("TelescopePreviewNormal", { fg = colors.fg, bg = colors.grey }),
		utils.hl("TelescopePreviewBorder", { fg = colors.lightgrey, bg = colors.grey }),
		utils.hl("TelescopePreviewTitle", { fg = colors.green, bold = true }),
		utils.hl("TelescopePreviewLine", { bg = colors.bg }),
		utils.hl("TelescopePreviewMatch", { fg = colors.yellow, bold = true }),
		utils.hl("TelescopePreviewPipe", { fg = colors.cyan }),
		utils.hl("TelescopePreviewCharDev", { fg = colors.yellow }),
		utils.hl("TelescopePreviewDirectory", { fg = colors.blue }),
		utils.hl("TelescopePreviewBlock", { fg = colors.cyan }),
		utils.hl("TelescopePreviewLink", { fg = colors.yellow }),
		utils.hl("TelescopePreviewSocket", { fg = colors.red }),
		utils.hl("TelescopePreviewRead", { fg = colors.yellow }),
		utils.hl("TelescopePreviewWrite", { fg = colors.red }),
		utils.hl("TelescopePreviewExecute", { fg = colors.green }),
		utils.hl("TelescopePreviewHyphen", { fg = colors.lightgrey }),
		utils.hl("TelescopePreviewSticky", { fg = colors.yellow }),
		utils.hl("TelescopePreviewSize", { fg = colors.blue }),
		utils.hl("TelescopePreviewUser", { fg = colors.yellow }),
		utils.hl("TelescopePreviewGroup", { fg = colors.cyan }),
		utils.hl("TelescopePreviewDate", { fg = colors.lightgrey }),
		utils.hl("TelescopePreviewMessage", { fg = colors.fg }),
		utils.hl("TelescopePreviewMessageFillchar", { fg = colors.lightgrey }),

		-- Selection and matching
		utils.hl("TelescopeSelection", { fg = colors.fg, bg = colors.bg }),
		utils.hl("TelescopeSelectionCaret", { fg = colors.blue }),
		utils.hl("TelescopeMultiSelection", { fg = colors.yellow }),
		utils.hl("TelescopeMultiIcon", { fg = colors.blue }),
		utils.hl("TelescopeMatching", { fg = colors.yellow, bold = true }),

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
