-- Light variant palette for slime colorscheme
local utils = require("slime.utils")

local M = {}

-- Base colors (inverted from dark)
local base = {
    bg = "#F5F5F5",
    fg = "#2C2E2F",
    selection = "#E0E5E6",
    line = "#EAEDEF",
    cursor = "#1E2324",
    comment = "#91928C"
}

-- Semantic colors (adjusted for light theme)
local semantic = {
    -- Language constructs
    keyword = "#8B7D1A", -- Darker version of dark theme keyword
    declaration = "#B8621E", -- Darker version of dark theme declaration
    func = "#C89A4D", -- Darker version of dark theme func
    method = "#C89A4D", -- Darker version of dark theme method
    property = "#8E5A5E", -- Darker version of dark theme property
    type = "#B8A434", -- Darker version of dark theme type
    string = "#4A7B91", -- Darker version of dark theme string
    number = "#8A5189", -- Darker version of dark theme number
    operator = "#9CA28E", -- Darker version of dark theme operator

    -- Diagnostic colors
    error = "#C62E2E",
    warning = "#7B8F37",
    info = "#4A7B95",
    hint = "#5B7C57",

    -- Git colors
    git_add = "#7B8F37",
    git_change = "#8B7D1A",
    git_delete = "#C62E2E",

    -- UI accents
    accent1 = "#8B7D1A",
    accent2 = "#B8621E",
    accent3 = "#4A7B95"
}

-- Plugin-specific colors
local plugin = {
    telescope_bg = "#EAEDEF",
    telescope_prompt_bg = "#F0F0F0",
    telescope_selection_bg = "#D5DADB"
}

-- Generate full palette
M.colors = vim.tbl_extend("force", base, semantic, plugin)

-- Add computed colors
M.colors.line_nr = utils.darken(base.bg, 0.2)
M.colors.visual = utils.darken(base.selection, 0.1)
M.colors.search = utils.alpha(semantic.accent1, 0.3)

-- Terminal colors (adjusted for light theme)
M.terminal_colors = {
    terminal_color_0 = base.bg,
    terminal_color_1 = semantic.error,
    terminal_color_2 = semantic.git_add,
    terminal_color_3 = semantic.warning,
    terminal_color_4 = semantic.info,
    terminal_color_5 = semantic.number,
    terminal_color_6 = semantic.string,
    terminal_color_7 = base.fg,
    terminal_color_8 = base.comment,
    terminal_color_9 = utils.darken(semantic.error, 0.2),
    terminal_color_10 = utils.darken(semantic.git_add, 0.2),
    terminal_color_11 = utils.darken(semantic.warning, 0.2),
    terminal_color_12 = utils.darken(semantic.info, 0.2),
    terminal_color_13 = utils.darken(semantic.number, 0.2),
    terminal_color_14 = utils.darken(semantic.string, 0.2),
    terminal_color_15 = utils.darken(base.fg, 0.2)
}

return M
