-- lua/sequence/groups/syntax.lua
local M = {}
local utils = require("sequence.utils")

function M.get_highlights(colors)
	return utils.merge_highlights(
		utils.hl("Comment", utils.apply_style({ fg = colors.lightgrey }, "comments")),

		-- Constants
		utils.hl("Constant", { fg = colors.yellow }),
		utils.hl("String", utils.apply_style({ fg = colors.green }, "strings")),
		utils.hl("Character", { fg = colors.green }),
		utils.hl("Number", { fg = colors.yellow }),
		utils.hl("Boolean", { fg = colors.yellow }),
		utils.hl("Float", { fg = colors.yellow }),

		-- Identifiers
		utils.hl("Identifier", { fg = colors.lightblue }),
		utils.hl("Function", utils.apply_style({ fg = colors.yellow }, "functions")),

		-- Statements
		utils.hl("Statement", utils.apply_style({ fg = colors.magenta }, "keywords")),
		utils.hl("Conditional", utils.apply_style({ fg = colors.magenta }, "keywords")),
		utils.hl("Repeat", utils.apply_style({ fg = colors.magenta }, "keywords")),
		utils.hl("Label", utils.apply_style({ fg = colors.magenta }, "keywords")),
		utils.hl("Operator", { fg = colors.cyan }),
		utils.hl("Keyword", utils.apply_style({ fg = colors.magenta }, "keywords")),
		utils.hl("Exception", utils.apply_style({ fg = colors.magenta }, "keywords")),

		-- PreProcessor
		utils.hl("PreProc", { fg = colors.magenta }),
		utils.hl("Include", { fg = colors.magenta }),
		utils.hl("Define", { fg = colors.magenta }),
		utils.hl("Macro", { fg = colors.magenta }),
		utils.hl("PreCondit", { fg = colors.magenta }),

		-- Types
		utils.hl("Type", { fg = colors.blue }),
		utils.hl("StorageClass", { fg = colors.blue }),
		utils.hl("Structure", { fg = colors.blue }),
		utils.hl("Typedef", { fg = colors.blue }),

		-- Special
		utils.hl("Special", { fg = colors.cyan }),
		utils.hl("SpecialChar", { fg = colors.cyan }),
		utils.hl("Tag", { fg = colors.blue }),
		utils.hl("Delimiter", { fg = colors.fg }),
		utils.hl("SpecialComment", { fg = colors.lightcyan }),
		utils.hl("Debug", { fg = colors.lightred }),

		-- Misc
		utils.hl("Underlined", { fg = colors.lightblue, underline = true }),
		utils.hl("Ignore", { fg = colors.grey }),
		utils.hl("Error", { fg = colors.error }),
		utils.hl("Todo", { fg = colors.lightyellow, bold = true })
	)
end

return M
