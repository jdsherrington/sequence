-- lua/sequence/groups/plugins/nvim-tree.lua
local M = {}
local utils = require("sequence.utils")

function M.get_highlights(colors)
	return utils.merge_highlights(
		-- Main tree
		utils.hl("NvimTreeNormal", { fg = colors.fg, bg = colors.grey }),
		utils.hl("NvimTreeNormalNC", { fg = colors.fg, bg = colors.grey }),
		utils.hl("NvimTreeNormalFloat", { fg = colors.fg, bg = colors.grey }),
		utils.hl("NvimTreeEndOfBuffer", { fg = colors.grey }),
		utils.hl("NvimTreePopup", { fg = colors.fg, bg = colors.grey }),
		utils.hl("NvimTreeSignColumn", { fg = colors.fg, bg = colors.grey }),
		utils.hl("NvimTreeWinSeparator", { fg = colors.lightgrey }),
		utils.hl("NvimTreeWindowPicker", { fg = colors.bg, bg = colors.yellow, bold = true }),

		-- Cursor and selection
		utils.hl("NvimTreeCursorLine", { bg = colors.bg }),
		utils.hl("NvimTreeCursorColumn", { bg = colors.bg }),
		utils.hl("NvimTreeCursor", { fg = colors.fg }),

		-- Directories
		utils.hl("NvimTreeFolderName", { fg = colors.blue }),
		utils.hl("NvimTreeOpenedFolderName", { fg = colors.blue, bold = true }),
		utils.hl("NvimTreeEmptyFolderName", { fg = colors.lightgrey }),
		utils.hl("NvimTreeSymlinkFolderName", { fg = colors.cyan }),
		utils.hl("NvimTreeRootFolder", { fg = colors.magenta, bold = true }),

		-- Files
		utils.hl("NvimTreeFileName", { fg = colors.fg }),
		utils.hl("NvimTreeExecFile", { fg = colors.lightgreen }),
		utils.hl("NvimTreeOpenedFile", { fg = colors.fg, bold = true }),
		utils.hl("NvimTreeSpecialFile", { fg = colors.yellow }),
		utils.hl("NvimTreeImageFile", { fg = colors.cyan }),
		utils.hl("NvimTreeSymlink", { fg = colors.cyan }),
		utils.hl("NvimTreeSymlinkIcon", { fg = colors.cyan }),

		-- Folder icons
		utils.hl("NvimTreeFolderIcon", { fg = colors.blue }),
		utils.hl("NvimTreeOpenedFolderIcon", { fg = colors.blue }),
		utils.hl("NvimTreeClosedFolderIcon", { fg = colors.blue }),
		utils.hl("NvimTreeFileIcon", { fg = colors.fg }),

		-- Tree structure
		utils.hl("NvimTreeIndentMarker", { fg = colors.lightgrey }),
		utils.hl("NvimTreeLiveFilterPrefix", { fg = colors.magenta, bold = true }),
		utils.hl("NvimTreeLiveFilterValue", { fg = colors.magenta, bold = true }),

		-- Git status
		utils.hl("NvimTreeGitDirty", { fg = colors.lightyellow }),
		utils.hl("NvimTreeGitStaged", { fg = colors.lightgreen }),
		utils.hl("NvimTreeGitMerge", { fg = colors.magenta }),
		utils.hl("NvimTreeGitRenamed", { fg = colors.cyan }),
		utils.hl("NvimTreeGitNew", { fg = colors.lightgreen }),
		utils.hl("NvimTreeGitDeleted", { fg = colors.lightred }),
		utils.hl("NvimTreeGitIgnored", { fg = colors.lightgrey }),

		-- Diagnostics
		utils.hl("NvimTreeLspDiagnosticsError", { fg = colors.error }),
		utils.hl("NvimTreeLspDiagnosticsWarning", { fg = colors.warning }),
		utils.hl("NvimTreeLspDiagnosticsInformation", { fg = colors.info }),
		utils.hl("NvimTreeLspDiagnosticsHint", { fg = colors.hint }),

		-- Bookmarks
		utils.hl("NvimTreeBookmark", { fg = colors.yellow }),
		utils.hl("NvimTreeBookmarkIcon", { fg = colors.yellow }),

		-- Modified files
		utils.hl("NvimTreeModifiedFile", { fg = colors.lightyellow }),
		utils.hl("NvimTreeModifiedIcon", { fg = colors.lightyellow }),

		-- Copy/Cut
		utils.hl("NvimTreeCopiedHL", { fg = colors.lightgreen }),
		utils.hl("NvimTreeCutHL", { fg = colors.lightred })
	)
end

return M
