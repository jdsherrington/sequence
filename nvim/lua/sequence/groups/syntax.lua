-- lua/sequence/groups/syntax.lua
local M = {}
local utils = require("sequence.utils")

function M.get_highlights(colors)
	return utils.merge_highlights(
		utils.hl("Comment", utils.apply_style({ fg = colors.lightgrey }, "comments")),

		-- Constants
		utils.hl("Constant", { fg = colors.lightmagenta }),
		utils.hl("String", utils.apply_style({ fg = colors.lightgreen }, "strings")),
		utils.hl("Character", { fg = colors.lightgreen }),
		utils.hl("Number", { fg = colors.lightmagenta }),
		utils.hl("Boolean", { fg = colors.lightmagenta }),
		utils.hl("Float", { fg = colors.lightmagenta }),

		-- Identifiers
		utils.hl("Identifier", { fg = colors.lightblue }),
		utils.hl("Function", utils.apply_style({ fg = colors.lightyellow }, "functions")),

		-- Statements
		utils.hl("Statement", utils.apply_style({ fg = colors.lightred }, "keywords")),
		utils.hl("Conditional", utils.apply_style({ fg = colors.lightred }, "keywords")),
		utils.hl("Repeat", utils.apply_style({ fg = colors.lightred }, "keywords")),
		utils.hl("Label", utils.apply_style({ fg = colors.lightred }, "keywords")),
		utils.hl("Operator", { fg = colors.lightcyan }),
		utils.hl("Keyword", utils.apply_style({ fg = colors.lightred }, "keywords")),
		utils.hl("Exception", utils.apply_style({ fg = colors.lightred }, "keywords")),

		-- PreProcessor
		utils.hl("PreProc", { fg = colors.lightmagenta }),
		utils.hl("Include", { fg = colors.lightmagenta }),
		utils.hl("Define", { fg = colors.lightmagenta }),
		utils.hl("Macro", { fg = colors.lightmagenta }),
		utils.hl("PreCondit", { fg = colors.lightmagenta }),

		-- Types
		utils.hl("Type", { fg = colors.lightblue }),
		utils.hl("StorageClass", { fg = colors.lightblue }),
		utils.hl("Structure", { fg = colors.lightblue }),
		utils.hl("Typedef", { fg = colors.lightblue }),

		-- Special
		utils.hl("Special", { fg = colors.lightcyan }),
		utils.hl("SpecialChar", { fg = colors.lightcyan }),
		utils.hl("Tag", { fg = colors.lightblue }),
		utils.hl("Delimiter", { fg = colors.fg }),
		utils.hl("SpecialComment", { fg = colors.lightcyan }),
		utils.hl("Debug", { fg = colors.lightred }),

		-- Misc
		utils.hl("Underlined", { fg = colors.lightblue, underline = true }),
		utils.hl("Ignore", { fg = colors.grey }),
		utils.hl("Error", { fg = colors.error }),
		utils.hl("Todo", { fg = colors.warning, bold = true })
	)
end

return M
