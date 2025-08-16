-- Git-related highlights for slime colorscheme
local utils = require("slime.utils")

local M = {}

function M.setup(colors, config)
    -- GitSigns
    utils.highlight("GitSignsAdd", {
        fg = colors.git_add,
        bg = colors.bg
    }, config)
    utils.highlight("GitSignsChange", {
        fg = colors.git_change,
        bg = colors.bg
    }, config)
    utils.highlight("GitSignsDelete", {
        fg = colors.git_delete,
        bg = colors.bg
    }, config)
    utils.highlight("GitSignsAddNr", {
        fg = colors.git_add,
        bg = colors.bg
    }, config)
    utils.highlight("GitSignsChangeNr", {
        fg = colors.git_change,
        bg = colors.bg
    }, config)
    utils.highlight("GitSignsDeleteNr", {
        fg = colors.git_delete,
        bg = colors.bg
    }, config)
    utils.highlight("GitSignsAddLn", {
        bg = utils.blend(colors.git_add, colors.bg, 0.1)
    }, config)
    utils.highlight("GitSignsChangeLn", {
        bg = utils.blend(colors.git_change, colors.bg, 0.1)
    }, config)
    utils.highlight("GitSignsDeleteLn", {
        bg = utils.blend(colors.git_delete, colors.bg, 0.1)
    }, config)

    -- Git diff (built-in)
    utils.highlight("DiffAdd", {
        fg = colors.git_add,
        bg = utils.blend(colors.git_add, colors.bg, 0.1)
    }, config)
    utils.highlight("DiffChange", {
        fg = colors.git_change,
        bg = utils.blend(colors.git_change, colors.bg, 0.1)
    }, config)
    utils.highlight("DiffDelete", {
        fg = colors.git_delete,
        bg = utils.blend(colors.git_delete, colors.bg, 0.1)
    }, config)
    utils.highlight("DiffText", {
        fg = colors.fg,
        bg = utils.blend(colors.git_change, colors.bg, 0.2)
    }, config)

    -- Gitsigns inline
    utils.highlight("GitSignsAddInline", {
        bg = utils.blend(colors.git_add, colors.bg, 0.2)
    }, config)
    utils.highlight("GitSignsChangeInline", {
        bg = utils.blend(colors.git_change, colors.bg, 0.2)
    }, config)
    utils.highlight("GitSignsDeleteInline", {
        bg = utils.blend(colors.git_delete, colors.bg, 0.2)
    }, config)

    -- Git conflict markers
    utils.highlight("GitConflictCurrent", {
        bg = utils.blend(colors.info, colors.bg, 0.1)
    }, config)
    utils.highlight("GitConflictIncoming", {
        bg = utils.blend(colors.warning, colors.bg, 0.1)
    }, config)
    utils.highlight("GitConflictAncestor", {
        bg = utils.blend(colors.hint, colors.bg, 0.1)
    }, config)
end

return M
