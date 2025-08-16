-- Editor highlights for slime colorscheme
local utils = require("slime.utils")

local M = {}

function M.setup(colors, config)
    -- Basic editor elements
    utils.highlight("Normal", {
        fg = colors.fg,
        bg = colors.bg
    }, config)
    utils.highlight("NormalFloat", {
        fg = colors.fg,
        bg = colors.bg
    }, config)
    utils.highlight("Cursor", {
        fg = colors.bg,
        bg = colors.cursor
    }, config)
    utils.highlight("CursorLine", {
        bg = colors.line
    }, config)
    utils.highlight("CursorLineNr", {
        fg = colors.fg,
        bold = true
    }, config)
    utils.highlight("LineNr", {
        fg = colors.line_nr,
        bg = colors.bg
    }, config)
    utils.highlight("Visual", {
        bg = colors.visual
    }, config)
    utils.highlight("VisualNOS", {
        bg = colors.visual
    }, config)

    -- Splits and windows
    utils.highlight("SignColumn", {
        bg = colors.bg
    }, config)
    utils.highlight("VertSplit", {
        fg = colors.line,
        bg = colors.bg
    }, config)
    utils.highlight("WinSeparator", {
        fg = colors.line,
        bg = colors.bg
    }, config)
    utils.highlight("ColorColumn", {
        bg = colors.line
    }, config)

    -- Status and command line
    utils.highlight("StatusLine", {
        fg = colors.fg,
        bg = colors.line
    }, config)
    utils.highlight("StatusLineNC", {
        fg = colors.comment,
        bg = colors.line
    }, config)
    utils.highlight("CmdLine", {
        fg = colors.fg,
        bg = colors.bg
    }, config)
    utils.highlight("MsgArea", {
        fg = colors.fg,
        bg = colors.bg
    }, config)

    -- Popup menus
    utils.highlight("Pmenu", {
        fg = colors.fg,
        bg = colors.line
    }, config)
    utils.highlight("PmenuSel", {
        fg = colors.bg,
        bg = colors.fg
    }, config)
    utils.highlight("PmenuSbar", {
        bg = colors.selection
    }, config)
    utils.highlight("PmenuThumb", {
        bg = colors.fg
    }, config)

    -- Search
    utils.highlight("Search", {
        fg = colors.bg,
        bg = colors.accent1
    }, config)
    utils.highlight("IncSearch", {
        fg = colors.bg,
        bg = colors.accent2
    }, config)
    utils.highlight("CurSearch", {
        fg = colors.bg,
        bg = colors.accent2
    }, config)

    -- Folds
    utils.highlight("Folded", {
        fg = colors.comment,
        bg = colors.line
    }, config)
    utils.highlight("FoldColumn", {
        fg = colors.comment,
        bg = colors.bg
    }, config)

    -- Tabs
    utils.highlight("TabLine", {
        fg = colors.comment,
        bg = colors.line
    }, config)
    utils.highlight("TabLineSel", {
        fg = colors.fg,
        bg = colors.bg
    }, config)
    utils.highlight("TabLineFill", {
        bg = colors.line
    }, config)

    -- Wild menu
    utils.highlight("WildMenu", {
        fg = colors.bg,
        bg = colors.accent1
    }, config)

    -- Directory
    utils.highlight("Directory", {
        fg = colors.declaration
    }, config)

    -- Spelling
    utils.highlight("SpellBad", {
        sp = colors.error,
        undercurl = true
    }, config)
    utils.highlight("SpellCap", {
        sp = colors.warning,
        undercurl = true
    }, config)
    utils.highlight("SpellLocal", {
        sp = colors.info,
        undercurl = true
    }, config)
    utils.highlight("SpellRare", {
        sp = colors.hint,
        undercurl = true
    }, config)

    -- Miscellaneous
    utils.highlight("MatchParen", {
        fg = colors.accent1,
        bold = true
    }, config)
    utils.highlight("Whitespace", {
        fg = colors.comment
    }, config)
    utils.highlight("NonText", {
        fg = colors.comment
    }, config)
    utils.highlight("SpecialKey", {
        fg = colors.comment
    }, config)
    utils.highlight("Title", {
        fg = colors.accent1,
        bold = true
    }, config)
    utils.highlight("Question", {
        fg = colors.accent3
    }, config)
    utils.highlight("MoreMsg", {
        fg = colors.accent3
    }, config)
    utils.highlight("ModeMsg", {
        fg = colors.fg,
        bold = true
    }, config)
end

return M
