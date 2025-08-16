-- LSP-specific highlights for slime colorscheme
local utils = require("slime.utils")

local M = {}

function M.setup(colors, config)
    -- LSP semantic tokens
    utils.highlight("@lsp.type.class", {
        fg = colors.type
    }, config)
    utils.highlight("@lsp.type.decorator", {
        fg = colors.declaration
    }, config)
    utils.highlight("@lsp.type.enum", {
        fg = colors.type
    }, config)
    utils.highlight("@lsp.type.enumMember", {
        fg = colors.property
    }, config)
    utils.highlight("@lsp.type.function", {
        fg = colors.func
    }, config)
    utils.highlight("@lsp.type.interface", {
        fg = colors.type
    }, config)
    utils.highlight("@lsp.type.macro", {
        fg = colors.declaration
    }, config)
    utils.highlight("@lsp.type.method", {
        fg = colors.method
    }, config)
    utils.highlight("@lsp.type.namespace", {
        fg = colors.type
    }, config)
    utils.highlight("@lsp.type.parameter", {
        fg = colors.fg,
        italic = true
    }, config)
    utils.highlight("@lsp.type.property", {
        fg = colors.property
    }, config)
    utils.highlight("@lsp.type.struct", {
        fg = colors.type
    }, config)
    utils.highlight("@lsp.type.type", {
        fg = colors.type
    }, config)
    utils.highlight("@lsp.type.typeParameter", {
        fg = colors.type
    }, config)
    utils.highlight("@lsp.type.variable", {
        fg = colors.fg
    }, config)

    -- LSP modifiers
    utils.highlight("@lsp.mod.declaration", {
        fg = colors.declaration
    }, config)
    utils.highlight("@lsp.mod.definition", {
        fg = colors.fg,
        bold = true
    }, config)
    utils.highlight("@lsp.mod.deprecated", {
        fg = colors.comment,
        strikethrough = true
    }, config)
    utils.highlight("@lsp.mod.documentation", {
        fg = colors.comment
    }, config)
    utils.highlight("@lsp.mod.readonly", {
        fg = colors.fg,
        italic = true
    }, config)
    utils.highlight("@lsp.mod.static", {
        fg = colors.declaration
    }, config)

    -- LSP document highlighting
    utils.highlight("LspReferenceText", {
        bg = colors.selection
    }, config)
    utils.highlight("LspReferenceRead", {
        bg = colors.selection
    }, config)
    utils.highlight("LspReferenceWrite", {
        bg = colors.selection,
        bold = true
    }, config)

    -- LSP signature help
    utils.highlight("LspSignatureActiveParameter", {
        fg = colors.accent1,
        bold = true
    }, config)

    -- LSP code lens
    utils.highlight("LspCodeLens", {
        fg = colors.comment,
        italic = true
    }, config)
    utils.highlight("LspCodeLensSeparator", {
        fg = colors.comment
    }, config)

    -- LSP inlay hints
    utils.highlight("LspInlayHint", {
        fg = colors.comment,
        bg = colors.line
    }, config)
end

return M
