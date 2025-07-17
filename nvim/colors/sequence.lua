-- ~/.config/nvim/colors/mytheme.lua
local colors = {
	color0 = "#15181E",
	color1 = "#7D6466",
	color2 = "#6D786D",
	color3 = "#7F766C",
	color4 = "#5D7392",
	color5 = "#746B8E",
	color6 = "#5A7777",
	color7 = "#5E6678",
	color8 = "#2A2F3C",
	color9 = "#A5888B",
	color10 = "#859385",
	color11 = "#A19A91",
	color12 = "#7793BB",
	color13 = "#958BB6",
	color14 = "#7CA2A2",
	color15 = "#9BA6BF",
}

vim.cmd("highlight clear")
vim.o.background = "dark"
vim.g.colors_name = "sequence"

local function hi(group, opts)
	local gui = opts.gui or "NONE"
	local guifg = opts.fg or "NONE"
	local guibg = opts.bg or "NONE"
	vim.cmd(string.format("highlight %s guifg=%s guibg=%s gui=%s", group, guifg, guibg, gui))
end

local function hi_link(from, to)
	vim.cmd(string.format("highlight! link %s %s", from, to))
end

-- Core UI
hi("Normal", { fg = colors.color15 })
hi("CursorLine", { bg = colors.color8 })
hi("CursorColumn", { bg = colors.color8 })
hi("Visual", { bg = colors.color7 })
hi("LineNr", { fg = colors.color2, bg = colors.color0 })
hi("CursorLineNr", { fg = colors.color3, bg = colors.color0, gui = "bold" })
hi("StatusLine", { fg = colors.color1, bg = colors.color15 })
hi("StatusLineNC", { fg = colors.color2, bg = colors.color15 })
hi("VertSplit", { fg = colors.color8, bg = colors.color0 })
hi("Pmenu", { fg = colors.color1, bg = colors.color8 })
hi("PmenuSel", { fg = colors.color0, bg = colors.color3 })
hi("Search", { fg = colors.color0, bg = colors.color11 })
hi("IncSearch", { fg = colors.color0, bg = colors.color11, gui = "bold" })
hi("MatchParen", { fg = colors.color11, bg = colors.color8, gui = "bold" })
hi("ErrorMsg", { fg = colors.color6, bg = colors.color0, gui = "bold" })
hi("WarningMsg", { fg = colors.color11, bg = colors.color0 })
hi("ModeMsg", { fg = colors.color3, bg = colors.color0, gui = "bold" })
hi("MoreMsg", { fg = colors.color9, bg = colors.color0 })
hi("Question", { fg = colors.color9, bg = colors.color0 })

-- Syntax
hi("Comment", { fg = colors.color2, gui = "italic" })
hi("Constant", { fg = colors.color7 })
hi("String", { fg = colors.color4 })
hi("Character", { fg = colors.color4 })
hi("Number", { fg = colors.color13 })
hi("Boolean", { fg = colors.color7 })
hi("Float", { fg = colors.color13 })
hi("Identifier", { fg = colors.color1 })
hi("Function", { fg = colors.color5 })
hi("Statement", { fg = colors.color3 })
hi("Conditional", { fg = colors.color3 })
hi("Repeat", { fg = colors.color3 })
hi("Label", { fg = colors.color3 })
hi("Operator", { fg = colors.color12 })
hi("Keyword", { fg = colors.color3, gui = "bold" })
hi("Exception", { fg = colors.color6 })
hi("PreProc", { fg = colors.color10 })
hi("Include", { fg = colors.color10 })
hi("Define", { fg = colors.color10 })
hi("Macro", { fg = colors.color10 })
hi("Type", { fg = colors.color9 })
hi("StorageClass", { fg = colors.color9 })
hi("Structure", { fg = colors.color9 })
hi("Typedef", { fg = colors.color9 })
hi("Special", { fg = colors.color10 })
hi("SpecialComment", { fg = colors.color2, gui = "italic" })
hi("Underlined", { fg = colors.color3, gui = "underline" })
hi("Ignore", { fg = colors.color2 })
hi("Error", { fg = colors.color6, bg = colors.color0, gui = "bold" })
hi("Todo", { fg = colors.color14, bg = colors.color0, gui = "bold,italic" })

-- Diffs
hi("DiffAdd", { fg = colors.color4, bg = colors.color0 })
hi("DiffChange", { fg = colors.color11, bg = colors.color0 })
hi("DiffDelete", { fg = colors.color6, bg = colors.color0 })
hi("DiffText", { fg = colors.color3, bg = colors.color0 })

-- Tabs
hi("TabLine", { fg = colors.color2, bg = colors.color8 })
hi("TabLineSel", { fg = colors.color1, bg = colors.color15 })
hi("TabLineFill", { fg = colors.color2, bg = colors.color8 })

-- Core language constructs
hi_link("@comment", "Comment")
hi_link("@error", "Error")
hi_link("@none", "NONE")
hi_link("@preproc", "PreProc")
hi_link("@define", "Define")

-- Identifiers
hi_link("@constant", "Constant")
hi_link("@constant.builtin", "Special")
hi_link("@constant.macro", "Define")
hi_link("@string", "String")
hi_link("@string.regex", "String")
hi_link("@string.escape", "SpecialChar")
hi_link("@string.special", "SpecialChar")
hi_link("@character", "Character")
hi_link("@character.special", "SpecialChar")
hi_link("@number", "Number")
hi_link("@boolean", "Boolean")
hi_link("@float", "Float")

-- Functions and methods
hi_link("@function", "Function")
hi_link("@function.builtin", "Special")
hi_link("@function.call", "Function")
hi_link("@function.macro", "Macro")
hi_link("@method", "Function")
hi_link("@method.call", "Function")
hi_link("@constructor", "Special")
hi_link("@parameter", "Identifier")

-- Keywords and operators
hi_link("@keyword", "Keyword")
hi_link("@keyword.function", "Keyword")
hi_link("@keyword.operator", "Operator")
hi_link("@keyword.return", "Keyword")
hi_link("@conditional", "Conditional")
hi_link("@repeat", "Repeat")
hi_link("@debug", "Debug")
hi_link("@label", "Label")
hi_link("@include", "Include")
hi_link("@exception", "Exception")
hi_link("@operator", "Operator")

-- Types
hi_link("@type", "Type")
hi_link("@type.builtin", "Type")
hi_link("@type.definition", "Typedef")
hi_link("@type.qualifier", "Type")
hi_link("@storageclass", "StorageClass")
hi_link("@attribute", "PreProc")
hi_link("@field", "Identifier")
hi_link("@property", "Identifier")
hi_link("@namespace", "Include")
hi_link("@symbol", "Identifier")

-- Variables
hi_link("@variable", "Identifier")
hi_link("@variable.builtin", "Special")
hi_link("@variable.parameter", "Identifier")
hi_link("@variable.member", "Identifier")

-- Punctuation
hi_link("@punctuation.delimiter", "Delimiter")
hi_link("@punctuation.bracket", "Delimiter")
hi_link("@punctuation.special", "Delimiter")

-- Tags (markup, HTML, XML)
hi_link("@tag", "Tag")
hi_link("@tag.attribute", "Identifier")
hi_link("@tag.delimiter", "Delimiter")

-- Text (markup, markdown, etc.)
hi_link("@text", "Normal")
hi_link("@text.strong", "Bold")
hi_link("@text.emphasis", "Italic")
hi_link("@text.underline", "Underlined")
hi_link("@text.strike", "Strike")
hi_link("@text.title", "Title")
hi_link("@text.literal", "String")
hi_link("@text.uri", "Underlined")
hi_link("@text.math", "Special")
hi_link("@text.environment", "Macro")
hi_link("@text.environment.name", "Type")
hi_link("@text.reference", "Identifier")
hi_link("@text.todo", "Todo")
hi_link("@text.note", "SpecialComment")
hi_link("@text.warning", "WarningMsg")
hi_link("@text.danger", "ErrorMsg")
hi_link("@text.diff.add", "DiffAdd")
hi_link("@text.diff.delete", "DiffDelete")
