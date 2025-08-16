local utils = require("slime.utils")

local M = {}

local base = {
    bg = "#F5F5F5",
    fg = "#2C2E2F",
    selection = "#E0E5E6",
    line = "#EAEDEF",
    cursor = "#1E2324",
    comment = "#91928C"
}

local semantic = {
    keyword = "#8B7D1A", -- Darker version for light theme
    declaration = "#B8621E",
    func = "#C89A4D",
    method = "#C89A4D",
    property = "#8E5A5E",
    type = "#B8A434",
    string = "#4A7B91",
    number = "#8A5189",
    operator = "#9CA28E",

    error = "#C62E2E",
    warning = "#7B8F37",
    info = "#4A7B95",
    hint = "#5B7C57",

    git_add = "#7B8F37",
    git_change = "#8B7D1A",
    git_delete = "#C62E2E",

    accent1 = "#8B7D1A",
    accent2 = "#B8621E",
    accent3 = "#4A7B95"
}

local plugin = {
    telescope_bg = "#EAEDEF",
    telescope_prompt_bg = "#F0F0F0",
    telescope_selection_bg = "#D5DADB"
}

M.colors = vim.tbl_extend("force", base, semantic, plugin)

M.colors.line_nr = utils.darken(base.bg, 0.2)
M.colors.visual = utils.darken(base.selection, 0.1)
M.colors.search = utils.blend(semantic.accent1, base.bg, 0.3)

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
