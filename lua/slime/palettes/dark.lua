-- Dark variant palette for slime colorscheme
local utils = require("slime.utils")

local M = {}

-- Base colors
local base = {
    bg = "#1E2324",
    fg = "#D3D7CF",
    selection = "#2A2F30",
    line = "#252B2C",
    cursor = "#F5F5F5",
    comment = "#6E7573"
}

-- Semantic colors
local semantic = {
    -- Language constructs
    keyword = "#D8D29A", -- Control flow keywords
    declaration = "#D88F56", -- Function/class declarations
    func = "#E0BA7D", -- Functions
    method = "#E0BA7D", -- Methods
    property = "#BE9296", -- Fields/properties
    type = "#E6CE64", -- Types/classes
    string = "#8CAEC1", -- Strings
    number = "#B081B9", -- Numbers
    operator = "#CCD2BE", -- Operators and punctuation

    -- Diagnostic colors
    error = "#B64E4E",
    warning = "#91B147",
    info = "#6A9FB5",
    hint = "#7B9C77",

    -- Git colors
    git_add = "#91B147",
    git_change = "#D8D29A",
    git_delete = "#B64E4E",

    -- UI accents
    accent1 = "#D8D29A",
    accent2 = "#D88F56",
    accent3 = "#6A9FB5"
}

-- Plugin-specific colors
local plugin = {
    telescope_bg = "#232A2B",
    telescope_prompt_bg = "#1A1F20",
    telescope_selection_bg = "#2D3435"
}

-- Generate full palette
M.colors = vim.tbl_extend("force", base, semantic, plugin)

-- Add computed colors
M.colors.line_nr = utils.lighten(base.bg, 0.3)
M.colors.visual = utils.lighten(base.selection, 0.1)
M.colors.search = utils.alpha(semantic.accent1, 0.3)

-- Terminal colors
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
    terminal_color_9 = utils.lighten(semantic.error, 0.2),
    terminal_color_10 = utils.lighten(semantic.git_add, 0.2),
    terminal_color_11 = utils.lighten(semantic.warning, 0.2),
    terminal_color_12 = utils.lighten(semantic.info, 0.2),
    terminal_color_13 = utils.lighten(semantic.number, 0.2),
    terminal_color_14 = utils.lighten(semantic.string, 0.2),
    terminal_color_15 = utils.lighten(base.fg, 0.2)
}

return M
