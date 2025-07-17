-- lua/sequence/groups/plugins/which-key.lua
local M = {}
local utils = require("sequence.utils")

function M.get_highlights(colors)
	return utils.merge_highlights(
		-- Main window
		utils.hl("WhichKey", { fg = colors.lightblue, bold = true }),
		utils.hl("WhichKeyNormal", { fg = colors.fg, bg = colors.grey }),
		utils.hl("WhichKeyBorder", { fg = colors.lightgrey, bg = colors.grey }),
		utils.hl("WhichKeyTitle", { fg = colors.lightblue, bold = true }),

		-- Key descriptions
		utils.hl("WhichKeyDesc", { fg = colors.fg }),
		utils.hl("WhichKeyGroup", { fg = colors.lightcyan }),
		utils.hl("WhichKeySeperator", { fg = colors.lightgrey }),
		utils.hl("WhichKeyFloat", { fg = colors.fg, bg = colors.grey }),
		utils.hl("WhichKeyValue", { fg = colors.lightgreen }),

		-- Icons and symbols
		utils.hl("WhichKeyIcon", { fg = colors.lightblue }),
		utils.hl("WhichKeyIconAzure", { fg = colors.lightblue }),
		utils.hl("WhichKeyIconBlue", { fg = colors.lightblue }),
		utils.hl("WhichKeyIconCyan", { fg = colors.lightcyan }),
		utils.hl("WhichKeyIconGreen", { fg = colors.lightgreen }),
		utils.hl("WhichKeyIconGrey", { fg = colors.lightgrey }),
		utils.hl("WhichKeyIconOrange", { fg = colors.lightyellow }),
		utils.hl("WhichKeyIconPurple", { fg = colors.lightmagenta }),
		utils.hl("WhichKeyIconRed", { fg = colors.lightred }),
		utils.hl("WhichKeyIconYellow", { fg = colors.lightyellow }),

		-- Keymaps
		utils.hl("WhichKeyKeymap", { fg = colors.lightblue }),
		utils.hl("WhichKeyKeymapDesc", { fg = colors.fg }),

		-- Plugins
		utils.hl("WhichKeyPlugin", { fg = colors.lightmagenta }),
		utils.hl("WhichKeyPluginDesc", { fg = colors.fg }),

		-- Modes
		utils.hl("WhichKeyModeNormal", { fg = colors.lightblue }),
		utils.hl("WhichKeyModeInsert", { fg = colors.lightgreen }),
		utils.hl("WhichKeyModeVisual", { fg = colors.lightmagenta }),
		utils.hl("WhichKeyModeReplace", { fg = colors.lightred }),
		utils.hl("WhichKeyModeCommand", { fg = colors.lightyellow }),
		utils.hl("WhichKeyModeTerminal", { fg = colors.lightcyan }),

		-- Special keys
		utils.hl("WhichKeySpecial", { fg = colors.lightcyan }),

		-- Operators
		utils.hl("WhichKeyOperator", { fg = colors.lightcyan }),

		-- Motion
		utils.hl("WhichKeyMotion", { fg = colors.lightblue }),

		-- Text objects
		utils.hl("WhichKeyTextObj", { fg = colors.lightgreen }),

		-- Registers
		utils.hl("WhichKeyRegister", { fg = colors.lightmagenta }),

		-- Marks
		utils.hl("WhichKeyMark", { fg = colors.lightyellow }),

		-- Jumps
		utils.hl("WhichKeyJump", { fg = colors.lightcyan }),

		-- Windows
		utils.hl("WhichKeyWindow", { fg = colors.lightblue }),

		-- Buffers
		utils.hl("WhichKeyBuffer", { fg = colors.lightgreen }),

		-- Tabs
		utils.hl("WhichKeyTab", { fg = colors.lightmagenta }),

		-- Files
		utils.hl("WhichKeyFile", { fg = colors.lightyellow }),

		-- Search
		utils.hl("WhichKeySearch", { fg = colors.lightcyan }),

		-- Replace
		utils.hl("WhichKeyReplace", { fg = colors.lightred }),

		-- Folding
		utils.hl("WhichKeyFold", { fg = colors.lightgrey }),

		-- Git
		utils.hl("WhichKeyGit", { fg = colors.lightmagenta }),

		-- LSP
		utils.hl("WhichKeyLsp", { fg = colors.lightblue }),

		-- Diagnostics
		utils.hl("WhichKeyDiagnostic", { fg = colors.lightred }),

		-- Quickfix
		utils.hl("WhichKeyQuickfix", { fg = colors.lightyellow }),

		-- Location list
		utils.hl("WhichKeyLocationList", { fg = colors.lightcyan })
	)
end

return M
