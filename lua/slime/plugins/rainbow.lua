-- Rainbow brackets highlights for slime colorscheme
local utils = require("slime.utils")

local M = {}

function M.setup(colors, config)
    -- Only setup if rainbow plugins are loaded
    local has_ts_rainbow = utils.plugin_loaded("nvim-ts-rainbow") or vim.fn.exists("*TSRainbow") == 1
    local has_rainbow_delim = utils.plugin_loaded("rainbow-delimiters.nvim") or
                                  utils.plugin_loaded("rainbow-delimiters")

    if not has_ts_rainbow and not has_rainbow_delim then
        return
    end

    -- Rainbow brackets (support for multiple popular plugins)
    if has_ts_rainbow then
        -- p00f/nvim-ts-rainbow
        utils.highlight("TSRainbowRed", {
            fg = colors.accent1
        }, config)
        utils.highlight("TSRainbowYellow", {
            fg = colors.accent2
        }, config)
        utils.highlight("TSRainbowBlue", {
            fg = colors.accent3
        }, config)
    end

    if has_rainbow_delim then
        -- HiPhish/rainbow-delimiters.nvim
        utils.highlight("RainbowDelimiterRed", {
            fg = colors.accent1
        }, config)
        utils.highlight("RainbowDelimiterYellow", {
            fg = colors.accent2
        }, config)
        utils.highlight("RainbowDelimiterBlue", {
            fg = colors.accent3
        }, config)
        utils.highlight("RainbowDelimiterOrange", {
            fg = colors.declaration
        }, config)
        utils.highlight("RainbowDelimiterGreen", {
            fg = colors.git_add
        }, config)
        utils.highlight("RainbowDelimiterViolet", {
            fg = colors.number
        }, config)
        utils.highlight("RainbowDelimiterCyan", {
            fg = colors.string
        }, config)
    end
end

return M
