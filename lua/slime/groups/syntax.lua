-- Basic syntax highlights for slime colorscheme
local utils = require("slime.utils")

local M = {}

function M.setup(colors, config)
    -- Comments
    utils.highlight("Comment", {
        fg = colors.comment,
        italic = config.italic_comments
    }, config)

    -- Constants
    utils.highlight("Constant", {
        fg = colors.string
    }, config)
    utils.highlight("String", {
        fg = colors.string
    }, config)
    utils.highlight("Character", {
        fg = colors.string
    }, config)
    utils.highlight("Number", {
        fg = colors.number
    }, config)
    utils.highlight("Boolean", {
        fg = colors.number
    }, config)
    utils.highlight("Float", {
        fg = colors.number
    }, config)

    -- Identifiers
    utils.highlight("Identifier", {
        fg = colors.fg
    }, config)
    utils.highlight("Function", {
        fg = colors.func,
        bold = config.bold_functions
    }, config)

    -- Statements
    utils.highlight("Statement", {
        fg = colors.keyword
    }, config)
    utils.highlight("Conditional", {
        fg = colors.keyword
    }, config)
    utils.highlight("Repeat", {
        fg = colors.keyword
    }, config)
    utils.highlight("Label", {
        fg = colors.keyword
    }, config)
    utils.highlight("Operator", {
        fg = colors.operator
    }, config)
    utils.highlight("Keyword", {
        fg = colors.keyword,
        italic = config.italic_keywords
    }, config)
    utils.highlight("Exception", {
        fg = colors.keyword
    }, config)

    -- PreProc
    utils.highlight("PreProc", {
        fg = colors.declaration
    }, config)
    utils.highlight("Include", {
        fg = colors.declaration
    }, config)
    utils.highlight("Define", {
        fg = colors.declaration
    }, config)
    utils.highlight("Macro", {
        fg = colors.declaration
    }, config)
    utils.highlight("PreCondit", {
        fg = colors.declaration
    }, config)

    -- Types
    utils.highlight("Type", {
        fg = colors.type
    }, config)
    utils.highlight("StorageClass", {
        fg = colors.declaration
    }, config)
    utils.highlight("Structure", {
        fg = colors.type
    }, config)
    utils.highlight("Typedef", {
        fg = colors.type
    }, config)

    -- Special
    utils.highlight("Special", {
        fg = colors.accent2
    }, config)
    utils.highlight("SpecialChar", {
        fg = colors.accent2
    }, config)
    utils.highlight("Tag", {
        fg = colors.accent2
    }, config)
    utils.highlight("Delimiter", {
        fg = colors.operator
    }, config)
    utils.highlight("SpecialComment", {
        fg = colors.comment,
        bold = true
    }, config)
    utils.highlight("Debug", {
        fg = colors.accent2
    }, config)

    -- Underlined
    utils.highlight("Underlined", {
        fg = colors.accent3,
        underline = true
    }, config)

    -- Ignore
    utils.highlight("Ignore", {
        fg = colors.comment
    }, config)

    -- Error
    utils.highlight("Error", {
        fg = colors.error,
        bold = true
    }, config)

    -- Todo
    utils.highlight("Todo", {
        fg = colors.warning,
        bold = true
    }, config)

    -- Added/Removed (for diffs)
    utils.highlight("Added", {
        fg = colors.git_add
    }, config)
    utils.highlight("Removed", {
        fg = colors.git_delete
    }, config)
    utils.highlight("Changed", {
        fg = colors.git_change
    }, config)
end

return M
