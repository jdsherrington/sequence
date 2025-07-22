-- lua/sequence/groups/lsp.lua
local M = {}
local utils = require("sequence.utils")

function M.get_highlights(colors)
	return utils.merge_highlights(
		-- LSP Semantic Tokens
		utils.hl("@lsp.type.class", { fg = colors.blue }),
		utils.hl("@lsp.type.comment", utils.apply_style({ fg = colors.lightgrey }, "comments")),
		utils.hl("@lsp.type.decorator", { fg = colors.yellow }),
		utils.hl("@lsp.type.enum", { fg = colors.blue }),
		utils.hl("@lsp.type.enumMember", { fg = colors.cyan }),
		utils.hl("@lsp.type.event", { fg = colors.yellow }),
		utils.hl("@lsp.type.function", utils.apply_style({ fg = colors.yellow }, "functions")),
		utils.hl("@lsp.type.interface", { fg = colors.blue }),
		utils.hl("@lsp.type.keyword", utils.apply_style({ fg = colors.magenta }, "keywords")),
		utils.hl("@lsp.type.macro", { fg = colors.yellow }),
		utils.hl("@lsp.type.method", utils.apply_style({ fg = colors.yellow }, "functions")),
		utils.hl("@lsp.type.modifier", { fg = colors.magenta }),
		utils.hl("@lsp.type.namespace", { fg = colors.blue }),
		utils.hl("@lsp.type.number", { fg = colors.yellow }),
		utils.hl("@lsp.type.operator", { fg = colors.cyan }),
		utils.hl("@lsp.type.parameter", { fg = colors.blue }),
		utils.hl("@lsp.type.property", { fg = colors.cyan }),
		utils.hl("@lsp.type.regexp", { fg = colors.cyan }),
		utils.hl("@lsp.type.string", utils.apply_style({ fg = colors.green }, "strings")),
		utils.hl("@lsp.type.struct", { fg = colors.blue }),
		utils.hl("@lsp.type.type", { fg = colors.blue }),
		utils.hl("@lsp.type.typeParameter", { fg = colors.blue }),
		utils.hl("@lsp.type.variable", { fg = colors.blue }),

		-- LSP Semantic Token Modifiers
		utils.hl("@lsp.mod.abstract", { italic = true }),
		utils.hl("@lsp.mod.async", { italic = true }),
		utils.hl("@lsp.mod.defaultLibrary", { fg = colors.blue }),
		utils.hl("@lsp.mod.definition", { bold = true }),
		utils.hl("@lsp.mod.deprecated", { strikethrough = true }),
		utils.hl("@lsp.mod.documentation", { fg = colors.lightcyan }),
		utils.hl("@lsp.mod.modification", { underline = true }),
		utils.hl("@lsp.mod.static", { italic = true }),

		-- LSP Diagnostics
		utils.hl("DiagnosticError", { fg = colors.error }),
		utils.hl("DiagnosticWarn", { fg = colors.warning }),
		utils.hl("DiagnosticInfo", { fg = colors.info }),
		utils.hl("DiagnosticHint", { fg = colors.hint }),
		utils.hl("DiagnosticOk", { fg = colors.lightgreen }),

		-- LSP Diagnostic Signs
		utils.hl("DiagnosticSignError", { fg = colors.error }),
		utils.hl("DiagnosticSignWarn", { fg = colors.warning }),
		utils.hl("DiagnosticSignInfo", { fg = colors.info }),
		utils.hl("DiagnosticSignHint", { fg = colors.hint }),
		utils.hl("DiagnosticSignOk", { fg = colors.lightgreen }),

		-- LSP Diagnostic Underlines
		utils.hl("DiagnosticUnderlineError", { undercurl = true, sp = colors.error }),
		utils.hl("DiagnosticUnderlineWarn", { undercurl = true, sp = colors.warning }),
		utils.hl("DiagnosticUnderlineInfo", { undercurl = true, sp = colors.info }),
		utils.hl("DiagnosticUnderlineHint", { undercurl = true, sp = colors.hint }),
		utils.hl("DiagnosticUnderlineOk", { undercurl = true, sp = colors.lightgreen }),

		-- LSP Diagnostic Virtual Text
		utils.hl("DiagnosticVirtualTextError", { fg = colors.error, bg = colors.grey }),
		utils.hl("DiagnosticVirtualTextWarn", { fg = colors.warning, bg = colors.grey }),
		utils.hl("DiagnosticVirtualTextInfo", { fg = colors.info, bg = colors.grey }),
		utils.hl("DiagnosticVirtualTextHint", { fg = colors.hint, bg = colors.grey }),
		utils.hl("DiagnosticVirtualTextOk", { fg = colors.lightgreen, bg = colors.grey }),

		-- LSP Diagnostic Floating Windows
		utils.hl("DiagnosticFloatingError", { fg = colors.error }),
		utils.hl("DiagnosticFloatingWarn", { fg = colors.warning }),
		utils.hl("DiagnosticFloatingInfo", { fg = colors.info }),
		utils.hl("DiagnosticFloatingHint", { fg = colors.hint }),
		utils.hl("DiagnosticFloatingOk", { fg = colors.lightgreen }),

		-- LSP References
		utils.hl("LspReferenceText", { bg = colors.grey }),
		utils.hl("LspReferenceRead", { bg = colors.grey }),
		utils.hl("LspReferenceWrite", { bg = colors.grey, bold = true }),

		-- LSP Signature Help
		utils.hl("LspSignatureActiveParameter", { fg = colors.lightblue, bold = true }),

		-- LSP Hover
		utils.hl("LspInfoBorder", { fg = colors.lightgrey }),
		utils.hl("LspInfoTitle", { fg = colors.lightblue, bold = true }),

		-- LSP Code Lens
		utils.hl("LspCodeLens", { fg = colors.lightgrey, italic = true }),
		utils.hl("LspCodeLensSeparator", { fg = colors.lightgrey }),

		-- LSP Inlay Hints
		utils.hl("LspInlayHint", { fg = colors.lightgrey, bg = colors.grey, italic = true })
	)
end

return M
