-- lua/sequence/groups/plugins/lualine.lua
local M = {}
local utils = require("sequence.utils")

function M.get_highlights(colors)
	return utils.merge_highlights(
		-- Normal mode
		utils.hl("lualine_a_normal", { fg = colors.bg, bg = colors.lightblue, bold = true }),
		utils.hl("lualine_b_normal", { fg = colors.fg, bg = colors.grey }),
		utils.hl("lualine_c_normal", { fg = colors.fg, bg = colors.bg }),
		utils.hl("lualine_x_normal", { fg = colors.fg, bg = colors.bg }),
		utils.hl("lualine_y_normal", { fg = colors.fg, bg = colors.grey }),
		utils.hl("lualine_z_normal", { fg = colors.bg, bg = colors.lightblue, bold = true }),

		-- Insert mode
		utils.hl("lualine_a_insert", { fg = colors.bg, bg = colors.lightgreen, bold = true }),
		utils.hl("lualine_b_insert", { fg = colors.fg, bg = colors.grey }),
		utils.hl("lualine_c_insert", { fg = colors.fg, bg = colors.bg }),
		utils.hl("lualine_x_insert", { fg = colors.fg, bg = colors.bg }),
		utils.hl("lualine_y_insert", { fg = colors.fg, bg = colors.grey }),
		utils.hl("lualine_z_insert", { fg = colors.bg, bg = colors.lightgreen, bold = true }),

		-- Visual mode
		utils.hl("lualine_a_visual", { fg = colors.bg, bg = colors.lightmagenta, bold = true }),
		utils.hl("lualine_b_visual", { fg = colors.fg, bg = colors.grey }),
		utils.hl("lualine_c_visual", { fg = colors.fg, bg = colors.bg }),
		utils.hl("lualine_x_visual", { fg = colors.fg, bg = colors.bg }),
		utils.hl("lualine_y_visual", { fg = colors.fg, bg = colors.grey }),
		utils.hl("lualine_z_visual", { fg = colors.bg, bg = colors.lightmagenta, bold = true }),

		-- Replace mode
		utils.hl("lualine_a_replace", { fg = colors.bg, bg = colors.lightred, bold = true }),
		utils.hl("lualine_b_replace", { fg = colors.fg, bg = colors.grey }),
		utils.hl("lualine_c_replace", { fg = colors.fg, bg = colors.bg }),
		utils.hl("lualine_x_replace", { fg = colors.fg, bg = colors.bg }),
		utils.hl("lualine_y_replace", { fg = colors.fg, bg = colors.grey }),
		utils.hl("lualine_z_replace", { fg = colors.bg, bg = colors.lightred, bold = true }),

		-- Command mode
		utils.hl("lualine_a_command", { fg = colors.bg, bg = colors.lightyellow, bold = true }),
		utils.hl("lualine_b_command", { fg = colors.fg, bg = colors.grey }),
		utils.hl("lualine_c_command", { fg = colors.fg, bg = colors.bg }),
		utils.hl("lualine_x_command", { fg = colors.fg, bg = colors.bg }),
		utils.hl("lualine_y_command", { fg = colors.fg, bg = colors.grey }),
		utils.hl("lualine_z_command", { fg = colors.bg, bg = colors.lightyellow, bold = true }),

		-- Inactive
		utils.hl("lualine_a_inactive", { fg = colors.lightgrey, bg = colors.grey }),
		utils.hl("lualine_b_inactive", { fg = colors.lightgrey, bg = colors.grey }),
		utils.hl("lualine_c_inactive", { fg = colors.lightgrey, bg = colors.bg }),
		utils.hl("lualine_x_inactive", { fg = colors.lightgrey, bg = colors.bg }),
		utils.hl("lualine_y_inactive", { fg = colors.lightgrey, bg = colors.grey }),
		utils.hl("lualine_z_inactive", { fg = colors.lightgrey, bg = colors.grey }),

		-- Tabline
		utils.hl("lualine_a_tabline", { fg = colors.fg, bg = colors.grey }),
		utils.hl("lualine_b_tabline", { fg = colors.fg, bg = colors.grey }),
		utils.hl("lualine_c_tabline", { fg = colors.fg, bg = colors.bg }),
		utils.hl("lualine_x_tabline", { fg = colors.fg, bg = colors.bg }),
		utils.hl("lualine_y_tabline", { fg = colors.fg, bg = colors.grey }),
		utils.hl("lualine_z_tabline", { fg = colors.fg, bg = colors.grey }),

		-- Diff colors
		utils.hl("lualine_diff_added", { fg = colors.lightgreen }),
		utils.hl("lualine_diff_modified", { fg = colors.lightyellow }),
		utils.hl("lualine_diff_removed", { fg = colors.lightred }),

		-- Diagnostics
		utils.hl("lualine_diagnostics_error", { fg = colors.error }),
		utils.hl("lualine_diagnostics_warn", { fg = colors.warning }),
		utils.hl("lualine_diagnostics_info", { fg = colors.info }),
		utils.hl("lualine_diagnostics_hint", { fg = colors.hint }),

		-- Git branch
		utils.hl("lualine_git_branch", { fg = colors.lightmagenta }),

		-- Progress
		utils.hl("lualine_progress", { fg = colors.fg }),

		-- Location
		utils.hl("lualine_location", { fg = colors.fg }),

		-- Filename
		utils.hl("lualine_filename", { fg = colors.fg }),

		-- Filetype
		utils.hl("lualine_filetype", { fg = colors.lightblue }),

		-- Encoding
		utils.hl("lualine_encoding", { fg = colors.fg }),

		-- Fileformat
		utils.hl("lualine_fileformat", { fg = colors.fg }),

		-- Transitional separators
		utils.hl(
			"lualine_transitional_lualine_a_normal_to_lualine_b_normal",
			{ fg = colors.lightblue, bg = colors.grey }
		),
		utils.hl(
			"lualine_transitional_lualine_a_insert_to_lualine_b_insert",
			{ fg = colors.lightgreen, bg = colors.grey }
		),
		utils.hl(
			"lualine_transitional_lualine_a_visual_to_lualine_b_visual",
			{ fg = colors.lightmagenta, bg = colors.grey }
		),
		utils.hl(
			"lualine_transitional_lualine_a_replace_to_lualine_b_replace",
			{ fg = colors.lightred, bg = colors.grey }
		),
		utils.hl(
			"lualine_transitional_lualine_a_command_to_lualine_b_command",
			{ fg = colors.lightyellow, bg = colors.grey }
		)
	)
end

return M
