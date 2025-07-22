-- lua/sequence/groups/plugins/which-key.lua
local M = {}
local utils = require("sequence.utils")

function M.get_highlights(colors)
	return utils.merge_highlights(
		-- Main window
		utils.hl("WhichKey", { fg = colors.blue, bold = true }),
		utils.hl("WhichKeyNormal", { fg = colors.fg, bg = colors.grey }),
		utils.hl("WhichKeyBorder", { fg = colors.lightgrey, bg = colors.grey }),
		utils.hl("WhichKeyTitle", { fg = colors.blue, bold = true }),

		-- Key descriptions
		utils.hl("WhichKeyDesc", { fg = colors.fg }),
		utils.hl("WhichKeyGroup", { fg = colors.cyan }),
		utils.hl("WhichKeySeperator", { fg = colors.lightgrey }),
		utils.hl("WhichKeyFloat", { fg = colors.fg, bg = colors.grey }),
		utils.hl("WhichKeyValue", { fg = colors.green }),

		-- Icons and symbols
		utils.hl("WhichKeyIcon", { fg = colors.blue }),
		utils.hl("WhichKeyIconAzure", { fg = colors.blue }),
		utils.hl("WhichKeyIconBlue", { fg = colors.blue }),
		utils.hl("WhichKeyIconCyan", { fg = colors.cyan }),
		utils.hl("WhichKeyIconGreen", { fg = colors.green }),
		utils.hl("WhichKeyIconGrey", { fg = colors.lightgrey }),
		utils.hl("WhichKeyIconOrange", { fg = colors.yellow }),
		utils.hl("WhichKeyIconPurple", { fg = colors.magenta }),
		utils.hl("WhichKeyIconRed", { fg = colors.red }),
		utils.hl("WhichKeyIconYellow", { fg = colors.yellow }),

		-- Keymaps
		utils.hl("WhichKeyKeymap", { fg = colors.blue }),
		utils.hl("WhichKeyKeymapDesc", { fg = colors.fg }),

		-- Plugins
		utils.hl("WhichKeyPlugin", { fg = colors.magenta }),
		utils.hl("WhichKeyPluginDesc", { fg = colors.fg }),

		-- Modes
		utils.hl("WhichKeyModeNormal", { fg = colors.blue }),
		utils.hl("WhichKeyModeInsert", { fg = colors.green }),
		utils.hl("WhichKeyModeVisual", { fg = colors.magenta }),
		utils.hl("WhichKeyModeReplace", { fg = colors.red }),
		utils.hl("WhichKeyModeCommand", { fg = colors.yellow }),
		utils.hl("WhichKeyModeTerminal", { fg = colors.cyan }),

		-- Special keys
		utils.hl("WhichKeySpecial", { fg = colors.cyan }),

		-- Operators
		utils.hl("WhichKeyOperator", { fg = colors.cyan }),

		-- Motion
		utils.hl("WhichKeyMotion", { fg = colors.blue }),

		-- Text objects
		utils.hl("WhichKeyTextObj", { fg = colors.green }),

		-- Registers
		utils.hl("WhichKeyRegister", { fg = colors.yellow }),

		-- Marks
		utils.hl("WhichKeyMark", { fg = colors.yellow }),

		-- Jumps
		utils.hl("WhichKeyJump", { fg = colors.cyan }),

		-- Windows
		utils.hl("WhichKeyWindow", { fg = colors.blue }),

		-- Buffers
		utils.hl("WhichKeyBuffer", { fg = colors.green }),

		-- Tabs
		utils.hl("WhichKeyTab", { fg = colors.magenta }),

		-- Files
		utils.hl("WhichKeyFile", { fg = colors.yellow }),

		-- Search
		utils.hl("WhichKeySearch", { fg = colors.cyan }),

		-- Replace
		utils.hl("WhichKeyReplace", { fg = colors.red }),

		-- Folding
		utils.hl("WhichKeyFold", { fg = colors.lightgrey }),

		-- Git
		utils.hl("WhichKeyGit", { fg = colors.magenta }),

		-- LSP
		utils.hl("WhichKeyLsp", { fg = colors.blue }),

		-- Diagnostics
		utils.hl("WhichKeyDiagnostic", { fg = colors.red }),

		-- Quickfix
		utils.hl("WhichKeyQuickfix", { fg = colors.yellow }),

		-- Location list
		utils.hl("WhichKeyLocationList", { fg = colors.cyan })
	)
end

return M
