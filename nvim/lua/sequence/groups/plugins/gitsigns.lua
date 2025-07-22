-- lua/sequence/groups/plugins/gitsigns.lua
local M = {}
local utils = require("sequence.utils")

function M.get_highlights(colors)
	return utils.merge_highlights(
		-- Signs in sign column
		utils.hl("GitSignsAdd", { fg = colors.lightgreen }),
		utils.hl("GitSignsChange", { fg = colors.lightyellow }),
		utils.hl("GitSignsDelete", { fg = colors.lightred }),
		utils.hl("GitSignsTopdelete", { fg = colors.lightred }),
		utils.hl("GitSignsChangedelete", { fg = colors.lightyellow }),
		utils.hl("GitSignsUntracked", { fg = colors.lightcyan }),

		-- Line highlights
		utils.hl("GitSignsAddLn", { bg = colors.grey }),
		utils.hl("GitSignsChangeLn", { bg = colors.grey }),
		utils.hl("GitSignsDeleteLn", { bg = colors.grey }),
		utils.hl("GitSignsTopDeleteLn", { bg = colors.grey }),
		utils.hl("GitSignsChangeDeleteLn", { bg = colors.grey }),
		utils.hl("GitSignsUntrackedLn", { bg = colors.grey }),

		-- Number highlights
		utils.hl("GitSignsAddNr", { fg = colors.lightgreen }),
		utils.hl("GitSignsChangeNr", { fg = colors.lightyellow }),
		utils.hl("GitSignsDeleteNr", { fg = colors.lightred }),
		utils.hl("GitSignsTopDeleteNr", { fg = colors.lightred }),
		utils.hl("GitSignsChangeDeleteNr", { fg = colors.lightyellow }),
		utils.hl("GitSignsUntrackedNr", { fg = colors.lightcyan }),

		-- Word diffs
		utils.hl("GitSignsAddInline", { bg = colors.grey, fg = colors.lightgreen }),
		utils.hl("GitSignsChangeInline", { bg = colors.grey, fg = colors.lightyellow }),
		utils.hl("GitSignsDeleteInline", { bg = colors.grey, fg = colors.lightred }),

		-- Blame
		utils.hl("GitSignsCurrentLineBlame", { fg = colors.lightgrey, italic = true }),

		-- Preview window
		utils.hl("GitSignsAddPreview", { fg = colors.lightgreen }),
		utils.hl("GitSignsDeletePreview", { fg = colors.lightred }),

		-- Staged signs
		utils.hl("GitSignsStagedAdd", { fg = colors.lightgreen }),
		utils.hl("GitSignsStagedChange", { fg = colors.lightyellow }),
		utils.hl("GitSignsStagedDelete", { fg = colors.lightred }),
		utils.hl("GitSignsStagedChangedelete", { fg = colors.lightyellow }),
		utils.hl("GitSignsStagedTopdelete", { fg = colors.lightred }),

		-- Staged line highlights
		utils.hl("GitSignsStagedAddLn", { bg = colors.grey }),
		utils.hl("GitSignsStagedChangeLn", { bg = colors.grey }),
		utils.hl("GitSignsStagedDeleteLn", { bg = colors.grey }),
		utils.hl("GitSignsStagedTopDeleteLn", { bg = colors.grey }),
		utils.hl("GitSignsStagedChangeDeleteLn", { bg = colors.grey }),

		-- Staged number highlights
		utils.hl("GitSignsStagedAddNr", { fg = colors.lightgreen }),
		utils.hl("GitSignsStagedChangeNr", { fg = colors.lightyellow }),
		utils.hl("GitSignsStagedDeleteNr", { fg = colors.lightred }),
		utils.hl("GitSignsStagedTopDeleteNr", { fg = colors.lightred }),
		utils.hl("GitSignsStagedChangeDeleteNr", { fg = colors.lightyellow })
	)
end

return M
