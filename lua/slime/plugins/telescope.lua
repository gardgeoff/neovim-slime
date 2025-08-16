-- Telescope plugin highlights for slime colorscheme
local utils = require("slime.utils")

local M = {}

function M.setup(colors, config)
    -- Only setup if telescope is loaded
    if not utils.plugin_loaded("telescope") and not utils.plugin_loaded("telescope.nvim") then
        return
    end

    utils.highlight("TelescopeBorder", {
        fg = colors.telescope_bg,
        bg = colors.telescope_bg
    }, config)
    utils.highlight("TelescopePromptBorder", {
        fg = colors.telescope_prompt_bg,
        bg = colors.telescope_prompt_bg
    }, config)
    utils.highlight("TelescopeResultsBorder", {
        fg = colors.telescope_bg,
        bg = colors.telescope_bg
    }, config)
    utils.highlight("TelescopePreviewBorder", {
        fg = colors.telescope_bg,
        bg = colors.telescope_bg
    }, config)

    utils.highlight("TelescopePromptNormal", {
        fg = colors.fg,
        bg = colors.telescope_prompt_bg
    }, config)
    utils.highlight("TelescopeResultsNormal", {
        fg = colors.fg,
        bg = colors.telescope_bg
    }, config)
    utils.highlight("TelescopePreviewNormal", {
        fg = colors.fg,
        bg = colors.telescope_bg
    }, config)

    utils.highlight("TelescopePromptTitle", {
        fg = colors.fg,
        bg = colors.keyword,
        bold = true
    }, config)
    utils.highlight("TelescopeResultsTitle", {
        fg = colors.fg,
        bg = colors.keyword,
        bold = true
    }, config)
    utils.highlight("TelescopePreviewTitle", {
        fg = colors.fg,
        bg = colors.keyword,
        bold = true
    }, config)

    utils.highlight("TelescopeMatching", {
        fg = colors.keyword,
        bold = true
    }, config)
    utils.highlight("TelescopeSelection", {
        fg = colors.fg,
        bg = colors.telescope_selection_bg,
        bold = true
    }, config)
end

return M
