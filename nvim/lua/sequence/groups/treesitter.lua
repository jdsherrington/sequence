-- lua/sequence/groups/treesitter.lua
local M = {}
local utils = require("sequence.utils")

function M.get_highlights(colors)
	return utils.merge_highlights(
		-- Misc
		utils.hl("@comment", utils.apply_style({ fg = colors.lightgrey }, "comments")),
		utils.hl("@comment.documentation", { fg = colors.lightcyan }),
		utils.hl("@error", { fg = colors.error }),
		utils.hl("@none", { fg = colors.fg }),
		utils.hl("@preproc", { fg = colors.lightmagenta }),
		utils.hl("@define", { fg = colors.lightmagenta }),
		utils.hl("@operator", { fg = colors.lightcyan }),

		-- Punctuation
		utils.hl("@punctuation.delimiter", { fg = colors.fg }),
		utils.hl("@punctuation.bracket", { fg = colors.fg }),
		utils.hl("@punctuation.special", { fg = colors.lightcyan }),

		-- Literals
		utils.hl("@string", utils.apply_style({ fg = colors.lightgreen }, "strings")),
		utils.hl("@string.documentation", { fg = colors.lightcyan }),
		utils.hl("@string.regex", { fg = colors.lightcyan }),
		utils.hl("@string.escape", { fg = colors.lightcyan }),
		utils.hl("@string.special", { fg = colors.lightcyan }),
		utils.hl("@string.special.symbol", { fg = colors.lightmagenta }),
		utils.hl("@string.special.url", { fg = colors.lightcyan, underline = true }),
		utils.hl("@string.special.path", { fg = colors.lightgreen }),
		utils.hl("@character", { fg = colors.lightgreen }),
		utils.hl("@character.special", { fg = colors.lightcyan }),
		utils.hl("@boolean", { fg = colors.lightmagenta }),
		utils.hl("@number", { fg = colors.lightmagenta }),
		utils.hl("@number.float", { fg = colors.lightmagenta }),

		-- Functions
		utils.hl("@function", utils.apply_style({ fg = colors.lightyellow }, "functions")),
		utils.hl("@function.call", utils.apply_style({ fg = colors.lightyellow }, "functions")),
		utils.hl("@function.builtin", utils.apply_style({ fg = colors.lightyellow }, "functions")),
		utils.hl("@function.macro", { fg = colors.lightmagenta }),
		utils.hl("@function.method", utils.apply_style({ fg = colors.lightyellow }, "functions")),
		utils.hl("@function.method.call", utils.apply_style({ fg = colors.lightyellow }, "functions")),
		utils.hl("@constructor", { fg = colors.lightblue }),
		utils.hl("@parameter", { fg = colors.lightblue }),
		utils.hl("@parameter.builtin", { fg = colors.lightblue }),
		utils.hl("@parameter.reference", { fg = colors.lightblue }),

		-- Keywords
		utils.hl("@keyword", utils.apply_style({ fg = colors.lightred }, "keywords")),
		utils.hl("@keyword.conditional", utils.apply_style({ fg = colors.lightred }, "keywords")),
		utils.hl("@keyword.conditional.ternary", utils.apply_style({ fg = colors.lightred }, "keywords")),
		utils.hl("@keyword.coroutine", utils.apply_style({ fg = colors.lightred }, "keywords")),
		utils.hl("@keyword.debug", utils.apply_style({ fg = colors.lightred }, "keywords")),
		utils.hl("@keyword.directive", { fg = colors.lightmagenta }),
		utils.hl("@keyword.directive.define", { fg = colors.lightmagenta }),
		utils.hl("@keyword.exception", utils.apply_style({ fg = colors.lightred }, "keywords")),
		utils.hl("@keyword.function", utils.apply_style({ fg = colors.lightred }, "keywords")),
		utils.hl("@keyword.import", { fg = colors.lightmagenta }),
		utils.hl("@keyword.operator", utils.apply_style({ fg = colors.lightred }, "keywords")),
		utils.hl("@keyword.repeat", utils.apply_style({ fg = colors.lightred }, "keywords")),
		utils.hl("@keyword.return", utils.apply_style({ fg = colors.lightred }, "keywords")),
		utils.hl("@keyword.storage", utils.apply_style({ fg = colors.lightred }, "keywords")),
		utils.hl("@conditional", utils.apply_style({ fg = colors.lightred }, "keywords")),
		utils.hl("@conditional.ternary", utils.apply_style({ fg = colors.lightred }, "keywords")),
		utils.hl("@repeat", utils.apply_style({ fg = colors.lightred }, "keywords")),
		utils.hl("@debug", utils.apply_style({ fg = colors.lightred }, "keywords")),
		utils.hl("@label", utils.apply_style({ fg = colors.lightred }, "keywords")),
		utils.hl("@include", { fg = colors.lightmagenta }),
		utils.hl("@exception", utils.apply_style({ fg = colors.lightred }, "keywords")),

		-- Types
		utils.hl("@type", { fg = colors.lightblue }),
		utils.hl("@type.builtin", { fg = colors.lightblue }),
		utils.hl("@type.definition", { fg = colors.lightblue }),
		utils.hl("@type.qualifier", { fg = colors.lightblue }),
		utils.hl("@storageclass", { fg = colors.lightblue }),
		utils.hl("@attribute", { fg = colors.lightmagenta }),
		utils.hl("@attribute.builtin", { fg = colors.lightmagenta }),
		utils.hl("@field", { fg = colors.lightcyan }),
		utils.hl("@property", { fg = colors.lightcyan }),

		-- Identifiers
		utils.hl("@variable", { fg = colors.fg }),
		utils.hl("@variable.builtin", { fg = colors.lightblue }),
		utils.hl("@variable.parameter", { fg = colors.lightblue }),
		utils.hl("@variable.parameter.builtin", { fg = colors.lightblue }),
		utils.hl("@variable.member", { fg = colors.lightcyan }),
		utils.hl("@constant", { fg = colors.lightmagenta }),
		utils.hl("@constant.builtin", { fg = colors.lightmagenta }),
		utils.hl("@constant.macro", { fg = colors.lightmagenta }),
		utils.hl("@module", { fg = colors.lightblue }),
		utils.hl("@module.builtin", { fg = colors.lightblue }),
		utils.hl("@namespace", { fg = colors.lightblue }),
		utils.hl("@namespace.builtin", { fg = colors.lightblue }),
		utils.hl("@symbol", { fg = colors.lightmagenta }),

		-- Text (for markup languages)
		utils.hl("@text", { fg = colors.fg }),
		utils.hl("@text.strong", { fg = colors.fg, bold = true }),
		utils.hl("@text.emphasis", { fg = colors.fg, italic = true }),
		utils.hl("@text.underline", { fg = colors.fg, underline = true }),
		utils.hl("@text.strike", { fg = colors.fg, strikethrough = true }),
		utils.hl("@text.title", { fg = colors.lightblue, bold = true }),
		utils.hl("@text.title.1", { fg = colors.lightblue, bold = true }),
		utils.hl("@text.title.2", { fg = colors.lightblue, bold = true }),
		utils.hl("@text.title.3", { fg = colors.lightblue, bold = true }),
		utils.hl("@text.title.4", { fg = colors.lightblue, bold = true }),
		utils.hl("@text.title.5", { fg = colors.lightblue, bold = true }),
		utils.hl("@text.title.6", { fg = colors.lightblue, bold = true }),
		utils.hl("@text.quote", { fg = colors.lightgrey, italic = true }),
		utils.hl("@text.literal", { fg = colors.lightgreen }),
		utils.hl("@text.uri", { fg = colors.lightcyan, underline = true }),
		utils.hl("@text.math", { fg = colors.lightmagenta }),
		utils.hl("@text.environment", { fg = colors.lightmagenta }),
		utils.hl("@text.environment.name", { fg = colors.lightblue }),
		utils.hl("@text.reference", { fg = colors.lightcyan }),
		utils.hl("@text.todo", { fg = colors.warning, bold = true }),
		utils.hl("@text.todo.checked", { fg = colors.lightgreen }),
		utils.hl("@text.todo.unchecked", { fg = colors.warning }),
		utils.hl("@text.note", { fg = colors.info, bold = true }),
		utils.hl("@text.warning", { fg = colors.warning, bold = true }),
		utils.hl("@text.danger", { fg = colors.error, bold = true }),
		utils.hl("@text.diff.add", { fg = colors.lightgreen }),
		utils.hl("@text.diff.delete", { fg = colors.lightred }),

		-- Tags (for HTML, XML, etc.)
		utils.hl("@tag", { fg = colors.lightblue }),
		utils.hl("@tag.attribute", { fg = colors.lightcyan }),
		utils.hl("@tag.delimiter", { fg = colors.fg }),
		utils.hl("@tag.builtin", { fg = colors.lightblue }),

		-- Markup (newer treesitter groups)
		utils.hl("@markup.strong", { fg = colors.fg, bold = true }),
		utils.hl("@markup.italic", { fg = colors.fg, italic = true }),
		utils.hl("@markup.strikethrough", { fg = colors.fg, strikethrough = true }),
		utils.hl("@markup.underline", { fg = colors.fg, underline = true }),
		utils.hl("@markup.heading", { fg = colors.lightblue, bold = true }),
		utils.hl("@markup.heading.1", { fg = colors.lightblue, bold = true }),
		utils.hl("@markup.heading.2", { fg = colors.lightblue, bold = true }),
		utils.hl("@markup.heading.3", { fg = colors.lightblue, bold = true }),
		utils.hl("@markup.heading.4", { fg = colors.lightblue, bold = true }),
		utils.hl("@markup.heading.5", { fg = colors.lightblue, bold = true }),
		utils.hl("@markup.heading.6", { fg = colors.lightblue, bold = true }),
		utils.hl("@markup.quote", { fg = colors.lightgrey, italic = true }),
		utils.hl("@markup.math", { fg = colors.lightmagenta }),
		utils.hl("@markup.link", { fg = colors.lightcyan, underline = true }),
		utils.hl("@markup.link.label", { fg = colors.lightcyan }),
		utils.hl("@markup.link.url", { fg = colors.lightcyan, underline = true }),
		utils.hl("@markup.raw", { fg = colors.lightgreen }),
		utils.hl("@markup.raw.block", { fg = colors.lightgreen }),
		utils.hl("@markup.list", { fg = colors.lightcyan }),
		utils.hl("@markup.list.checked", { fg = colors.lightgreen }),
		utils.hl("@markup.list.unchecked", { fg = colors.warning }),

		-- Language-specific
		-- CSS
		utils.hl("@property.css", { fg = colors.lightcyan }),
		utils.hl("@string.css", { fg = colors.lightgreen }),
		utils.hl("@type.css", { fg = colors.lightblue }),

		-- JavaScript/TypeScript
		utils.hl("@constructor.javascript", { fg = colors.lightblue }),
		utils.hl("@constructor.typescript", { fg = colors.lightblue }),

		-- Python
		utils.hl("@variable.builtin.python", { fg = colors.lightblue }),

		-- Lua
		utils.hl("@constructor.lua", { fg = colors.lightblue }),
		utils.hl("@variable.builtin.lua", { fg = colors.lightblue }),

		-- Go
		utils.hl("@type.go", { fg = colors.lightblue }),
		utils.hl("@variable.builtin.go", { fg = colors.lightblue }),

		-- Rust
		utils.hl("@type.rust", { fg = colors.lightblue }),
		utils.hl("@variable.builtin.rust", { fg = colors.lightblue }),

		-- C/C++
		utils.hl("@type.c", { fg = colors.lightblue }),
		utils.hl("@type.cpp", { fg = colors.lightblue }),

		-- JSON
		utils.hl("@property.json", { fg = colors.lightcyan }),
		utils.hl("@string.json", { fg = colors.lightgreen }),

		-- YAML
		utils.hl("@property.yaml", { fg = colors.lightcyan }),
		utils.hl("@string.yaml", { fg = colors.lightgreen }),

		-- TOML
		utils.hl("@property.toml", { fg = colors.lightcyan }),
		utils.hl("@string.toml", { fg = colors.lightgreen }),

		-- Bash
		utils.hl("@variable.builtin.bash", { fg = colors.lightblue }),
		utils.hl("@string.bash", { fg = colors.lightgreen }),

		-- Vim
		utils.hl("@variable.builtin.vim", { fg = colors.lightblue })
	)
end

return M
