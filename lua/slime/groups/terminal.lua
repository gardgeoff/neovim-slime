local utils = require("slime.utils")

local M = {}

function M.setup(colors, config)
    -- Terminal window highlights
    utils.highlight("TermCursor", {
        fg = colors.bg,
        bg = colors.cursor
    }, config)
    utils.highlight("TermCursorNC", {
        fg = colors.bg,
        bg = colors.comment
    }, config)

    -- Terminal normal mode
    utils.highlight("Terminal", {
        fg = colors.fg,
        bg = colors.bg
    }, config)

    -- FTerm (floating terminal)
    utils.highlight("FTerm", {
        fg = colors.fg,
        bg = colors.bg
    }, config)
    utils.highlight("FTermBorder", {
        fg = colors.line,
        bg = colors.bg
    }, config)

    -- ToggleTerm
    utils.highlight("ToggleTerm", {
        fg = colors.fg,
        bg = colors.bg
    }, config)
    utils.highlight("ToggleTermBorder", {
        fg = colors.line,
        bg = colors.bg
    }, config)

    -- Terminal colors are set in the palette files via terminal_colors table
    -- This is handled in init.lua by set_terminal_colors() function
end

return M
