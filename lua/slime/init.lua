local M = {}

local function hi(g, spec)
	vim.api.nvim_set_hl(0, g, spec)
end
local function link(from, to)
	vim.api.nvim_set_hl(0, from, { link = to })
end
local function ts(fg, o)
	o = o or {}
	if fg then
		o.fg = fg
	end
	return o
end

function M.setup(opts)
	opts = opts or {}
	local P = {
		bg = "#1E2324",
		fg = "#D3D7CF",
		selection = "#2A2F30",
		line = "#252B2C",
		cursor = "#F5F5F5",

		kw_ctrl = "#D8D29A", -- if, for, foreach, return (incl. Blade directives)
		kw_decl = "#D88F56", -- function, class, trait
		func = "#E0BA7D", -- functions
		method = "#E0BA7D", -- methods
		property = "#BE9296", -- fields/properties
		type = "#E6CE64", -- types/classes
		string = "#8CAEC1",
		number = "#B081B9",
		comment = "#6E7573",
		punct_op = "#CCD2BE",

		diag_err = "#B64E4E",
		diag_warn = "#91B147",
		diag_info = "#6A9FB5",
		diag_hint = "#7B9C77",
	}

	-- UI
	hi("Normal", { fg = P.fg, bg = P.bg })
	hi("Cursor", { fg = P.bg, bg = P.cursor })
	hi("CursorLine", { bg = P.line })
	hi("CursorLineNr", { fg = P.fg, bold = true })
	hi("LineNr", { fg = "#808684", bg = P.bg })
	hi("Visual", { bg = P.selection })
	hi("SignColumn", { bg = P.bg })
	hi("VertSplit", { fg = P.line, bg = P.bg })
	hi("StatusLine", { fg = P.fg, bg = P.line })
	hi("Pmenu", { fg = P.fg, bg = P.line })
	hi("PmenuSel", { fg = P.bg, bg = P.fg })

	-- Diagnostics
	hi("DiagnosticError", { fg = P.diag_err })
	hi("DiagnosticWarn", { fg = P.diag_warn })
	hi("DiagnosticInfo", { fg = P.diag_info })
	hi("DiagnosticHint", { fg = P.diag_hint })
	link("DiagnosticUnderlineError", "SpellBad")
	link("DiagnosticUnderlineWarn", "SpellCap")
	link("DiagnosticUnderlineInfo", "SpellLocal")
	link("DiagnosticUnderlineHint", "SpellRare")

	-- Tree-sitter (global)
	hi("@comment", ts(P.comment, { italic = true }))
	hi("@string", ts(P.string))
	hi("@string.special", ts(P.string))
	hi("@number", ts(P.number))
	hi("@boolean", ts(P.number))
	hi("@operator", ts(P.punct_op))
	hi("@punctuation", ts(P.punct_op))
	hi("@punctuation.bracket", ts(P.punct_op))
	hi("@punctuation.delimiter", ts(P.punct_op))

	-- Keywords
	hi("@keyword", ts(P.kw_ctrl))
	hi("@keyword.conditional", ts(P.kw_ctrl))
	hi("@keyword.repeat", ts(P.kw_ctrl))
	hi("@keyword.return", ts(P.kw_ctrl))
	hi("@keyword.function", ts(P.kw_decl))
	hi("@keyword.type", ts(P.kw_decl)) -- class/trait/type-ish decls

	-- Idents
	hi("@function", ts(P.func))
	hi("@function.call", ts(P.func))
	hi("@method", ts(P.method))
	hi("@method.call", ts(P.method))
	hi("@type", ts(P.type))
	hi("@type.builtin", ts(P.type, { italic = true }))
	hi("@property", ts(P.property))
	hi("@field", ts(P.property))
	hi("@variable", ts(P.fg))
	hi("@variable.parameter", ts(P.fg, { italic = true }))

	-- LSP semantic tokens
	link("@lsp.type.namespace", "@type")
	link("@lsp.type.class", "@type")
	link("@lsp.type.interface", "@type")
	link("@lsp.type.enum", "@type")
	link("@lsp.type.typeParameter", "@type")
	link("@lsp.type.function", "@function")
	link("@lsp.type.method", "@method")
	link("@lsp.type.property", "@property")
	link("@lsp.type.parameter", "@variable.parameter")

	-- PHP/Blade specific tweaks
	-- PHP
	hi("@keyword.function.php", ts(P.kw_decl))
	hi("@keyword.php", ts(P.kw_ctrl))
	hi("@function.php", ts(P.func))
	hi("@method.php", ts(P.method))
	hi("@property.php", ts(P.property))
	hi("@type.php", ts(P.type))
	hi("@variable.parameter.php", ts(P.fg, { italic = true }))

	-- Blade (treat directives like control keywords)
	hi("@keyword.blade", ts(P.kw_ctrl))
	hi("@keyword.directive.blade", ts(P.kw_ctrl, { bold = true }))
	hi("@function.blade", ts(P.func))
	hi("@method.blade", ts(P.method))
	hi("@property.blade", ts(P.property))
	hi("@string.blade", ts(P.string))

	-- Rainbow brackets (support for multiple popular plugins)
	-- p00f/nvim-ts-rainbow
	hi("TSRainbowRed", { fg = "#D8D29A" })
	hi("TSRainbowYellow", { fg = "#D88F56" })
	hi("TSRainbowBlue", { fg = "#E0BA7D" })
	-- HiPhish/rainbow-delimiters.nvim
	hi("RainbowDelimiterRed", { fg = "#D8D29A" })
	hi("RainbowDelimiterYellow", { fg = "#D88F56" })
	hi("RainbowDelimiterBlue", { fg = "#E0BA7D" })

	-- Neo-tree custom colors
	hi("NeoTreeNormal", { fg = P.fg, bg = P.bg })
	hi("NeoTreeNormalNC", { fg = P.fg, bg = P.bg })
	hi("WinSeparator", { fg = P.line, bg = P.bg })

	vim.g.colors_name = "slime"
end

return M
