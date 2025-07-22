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
		utils.hl("@preproc", { fg = colors.magenta }),
		utils.hl("@define", { fg = colors.magenta }),
		utils.hl("@operator", { fg = colors.cyan }),

		-- Punctuation
		utils.hl("@punctuation.delimiter", { fg = colors.fg }),
		utils.hl("@punctuation.bracket", { fg = colors.fg }),
		utils.hl("@punctuation.special", { fg = colors.cyan }),

		-- Literals
		utils.hl("@string", utils.apply_style({ fg = colors.green }, "strings")),
		utils.hl("@string.documentation", { fg = colors.lightcyan }),
		utils.hl("@string.regex", { fg = colors.cyan }),
		utils.hl("@string.escape", { fg = colors.cyan }),
		utils.hl("@string.special", { fg = colors.cyan }),
		utils.hl("@string.special.symbol", { fg = colors.yellow }),
		utils.hl("@string.special.url", { fg = colors.cyan, underline = true }),
		utils.hl("@string.special.path", { fg = colors.green }),
		utils.hl("@character", { fg = colors.green }),
		utils.hl("@character.special", { fg = colors.cyan }),
		utils.hl("@boolean", { fg = colors.yellow }),
		utils.hl("@number", { fg = colors.yellow }),
		utils.hl("@number.float", { fg = colors.yellow }),

		-- Functions
		utils.hl("@function", utils.apply_style({ fg = colors.yellow }, "functions")),
		utils.hl("@function.call", utils.apply_style({ fg = colors.yellow }, "functions")),
		utils.hl("@function.builtin", utils.apply_style({ fg = colors.yellow }, "functions")),
		utils.hl("@function.macro", { fg = colors.yellow }),
		utils.hl("@function.method", utils.apply_style({ fg = colors.yellow }, "functions")),
		utils.hl("@function.method.call", utils.apply_style({ fg = colors.yellow }, "functions")),
		utils.hl("@constructor", { fg = colors.blue }),
		utils.hl("@parameter", { fg = colors.blue }),
		utils.hl("@parameter.builtin", { fg = colors.blue }),
		utils.hl("@parameter.reference", { fg = colors.blue }),

		-- Keywords
		utils.hl("@keyword", utils.apply_style({ fg = colors.magenta }, "keywords")),
		utils.hl("@keyword.conditional", utils.apply_style({ fg = colors.magenta }, "keywords")),
		utils.hl("@keyword.conditional.ternary", utils.apply_style({ fg = colors.magenta }, "keywords")),
		utils.hl("@keyword.coroutine", utils.apply_style({ fg = colors.magenta }, "keywords")),
		utils.hl("@keyword.debug", utils.apply_style({ fg = colors.magenta }, "keywords")),
		utils.hl("@keyword.directive", { fg = colors.magenta }),
		utils.hl("@keyword.directive.define", { fg = colors.magenta }),
		utils.hl("@keyword.exception", utils.apply_style({ fg = colors.magenta }, "keywords")),
		utils.hl("@keyword.function", utils.apply_style({ fg = colors.red }, "keywords")),
		utils.hl("@keyword.import", { fg = colors.magenta }),
		utils.hl("@keyword.operator", utils.apply_style({ fg = colors.magenta }, "keywords")),
		utils.hl("@keyword.repeat", utils.apply_style({ fg = colors.magenta }, "keywords")),
		utils.hl("@keyword.return", utils.apply_style({ fg = colors.magenta }, "keywords")),
		utils.hl("@keyword.storage", utils.apply_style({ fg = colors.magenta }, "keywords")),
		utils.hl("@conditional", utils.apply_style({ fg = colors.magenta }, "keywords")),
		utils.hl("@conditional.ternary", utils.apply_style({ fg = colors.magenta }, "keywords")),
		utils.hl("@repeat", utils.apply_style({ fg = colors.magenta }, "keywords")),
		utils.hl("@debug", utils.apply_style({ fg = colors.magenta }, "keywords")),
		utils.hl("@label", utils.apply_style({ fg = colors.magenta }, "keywords")),
		utils.hl("@include", { fg = colors.magenta }),
		utils.hl("@exception", utils.apply_style({ fg = colors.magenta }, "keywords")),

		-- Types
		utils.hl("@type", { fg = colors.blue }),
		utils.hl("@type.builtin", { fg = colors.blue }),
		utils.hl("@type.definition", { fg = colors.blue }),
		utils.hl("@type.qualifier", { fg = colors.blue }),
		utils.hl("@storageclass", { fg = colors.blue }),
		utils.hl("@attribute", { fg = colors.yellow }),
		utils.hl("@attribute.builtin", { fg = colors.yellow }),
		utils.hl("@field", { fg = colors.cyan }),
		utils.hl("@property", { fg = colors.cyan }),

		-- Identifiers
		utils.hl("@variable", { fg = colors.blue }),
		utils.hl("@variable.builtin", { fg = colors.blue }),
		utils.hl("@variable.parameter", { fg = colors.blue }),
		utils.hl("@variable.parameter.builtin", { fg = colors.blue }),
		utils.hl("@variable.member", { fg = colors.cyan }),
		utils.hl("@constant", { fg = colors.yellow }),
		utils.hl("@constant.builtin", { fg = colors.yellow }),
		utils.hl("@constant.macro", { fg = colors.yellow }),
		utils.hl("@module", { fg = colors.blue }),
		utils.hl("@module.builtin", { fg = colors.blue }),
		utils.hl("@namespace", { fg = colors.blue }),
		utils.hl("@namespace.builtin", { fg = colors.blue }),
		utils.hl("@symbol", { fg = colors.yellow }),

		-- Text (for markup languages)
		utils.hl("@text", { fg = colors.fg }),
		utils.hl("@text.strong", { fg = colors.fg, bold = true }),
		utils.hl("@text.emphasis", { fg = colors.fg, italic = true }),
		utils.hl("@text.underline", { fg = colors.fg, underline = true }),
		utils.hl("@text.strike", { fg = colors.fg, strikethrough = true }),
		utils.hl("@text.title", { fg = colors.blue, bold = true }),
		utils.hl("@text.title.1", { fg = colors.blue, bold = true }),
		utils.hl("@text.title.2", { fg = colors.blue, bold = true }),
		utils.hl("@text.title.3", { fg = colors.blue, bold = true }),
		utils.hl("@text.title.4", { fg = colors.blue, bold = true }),
		utils.hl("@text.title.5", { fg = colors.blue, bold = true }),
		utils.hl("@text.title.6", { fg = colors.blue, bold = true }),
		utils.hl("@text.quote", { fg = colors.grey, italic = true }),
		utils.hl("@text.literal", { fg = colors.green }),
		utils.hl("@text.uri", { fg = colors.cyan, underline = true }),
		utils.hl("@text.math", { fg = colors.yellow }),
		utils.hl("@text.environment", { fg = colors.yellow }),
		utils.hl("@text.environment.name", { fg = colors.blue }),
		utils.hl("@text.reference", { fg = colors.cyan }),
		utils.hl("@text.todo", { fg = colors.lightyellow, bold = true }),
		utils.hl("@text.todo.checked", { fg = colors.lightgreen }),
		utils.hl("@text.todo.unchecked", { fg = colors.lightyellow }),
		utils.hl("@text.note", { fg = colors.info, bold = true }),
		utils.hl("@text.warning", { fg = colors.warning, bold = true }),
		utils.hl("@text.danger", { fg = colors.error, bold = true }),
		utils.hl("@text.diff.add", { fg = colors.green }),
		utils.hl("@text.diff.delete", { fg = colors.red }),

		-- Tags (for HTML, XML, etc.)
		utils.hl("@tag", { fg = colors.blue }),
		utils.hl("@tag.attribute", { fg = colors.cyan }),
		utils.hl("@tag.delimiter", { fg = colors.fg }),
		utils.hl("@tag.builtin", { fg = colors.blue }),

		-- Markup (newer treesitter groups)
		utils.hl("@markup.strong", { fg = colors.fg, bold = true }),
		utils.hl("@markup.italic", { fg = colors.fg, italic = true }),
		utils.hl("@markup.strikethrough", { fg = colors.fg, strikethrough = true }),
		utils.hl("@markup.underline", { fg = colors.fg, underline = true }),
		utils.hl("@markup.heading", { fg = colors.blue, bold = true }),
		utils.hl("@markup.heading.1", { fg = colors.blue, bold = true }),
		utils.hl("@markup.heading.2", { fg = colors.blue, bold = true }),
		utils.hl("@markup.heading.3", { fg = colors.blue, bold = true }),
		utils.hl("@markup.heading.4", { fg = colors.blue, bold = true }),
		utils.hl("@markup.heading.5", { fg = colors.blue, bold = true }),
		utils.hl("@markup.heading.6", { fg = colors.blue, bold = true }),
		utils.hl("@markup.quote", { fg = colors.grey, italic = true }),
		utils.hl("@markup.math", { fg = colors.yellow }),
		utils.hl("@markup.link", { fg = colors.cyan, underline = true }),
		utils.hl("@markup.link.label", { fg = colors.cyan }),
		utils.hl("@markup.link.url", { fg = colors.cyan, underline = true }),
		utils.hl("@markup.raw", { fg = colors.green }),
		utils.hl("@markup.raw.block", { fg = colors.green }),
		utils.hl("@markup.list", { fg = colors.cyan }),
		utils.hl("@markup.list.checked", { fg = colors.lightgreen }),
		utils.hl("@markup.list.unchecked", { fg = colors.lightyellow }),

		-- Language-specific
		-- CSS
		utils.hl("@property.css", { fg = colors.cyan }),
		utils.hl("@string.css", { fg = colors.green }),
		utils.hl("@type.css", { fg = colors.blue }),

		-- JavaScript/TypeScript
		utils.hl("@constructor.javascript", { fg = colors.blue }),
		utils.hl("@constructor.typescript", { fg = colors.blue }),

		-- Python
		utils.hl("@variable.builtin.python", { fg = colors.blue }),

		-- Lua
		utils.hl("@constructor.lua", { fg = colors.blue }),
		utils.hl("@variable.builtin.lua", { fg = colors.blue }),

		-- Go
		utils.hl("@type.go", { fg = colors.blue }),
		utils.hl("@variable.builtin.go", { fg = colors.blue }),

		-- Rust
		utils.hl("@type.rust", { fg = colors.blue }),
		utils.hl("@variable.builtin.rust", { fg = colors.blue }),

		-- C/C++
		utils.hl("@type.c", { fg = colors.blue }),
		utils.hl("@type.cpp", { fg = colors.blue }),

		-- JSON
		utils.hl("@property.json", { fg = colors.cyan }),
		utils.hl("@string.json", { fg = colors.green }),

		-- YAML
		utils.hl("@property.yaml", { fg = colors.cyan }),
		utils.hl("@string.yaml", { fg = colors.green }),

		-- TOML
		utils.hl("@property.toml", { fg = colors.cyan }),
		utils.hl("@string.toml", { fg = colors.green }),

		-- Bash
		utils.hl("@variable.builtin.bash", { fg = colors.blue }),
		utils.hl("@string.bash", { fg = colors.green }),

		-- Vim
		utils.hl("@variable.builtin.vim", { fg = colors.blue })
	)
end

return M
