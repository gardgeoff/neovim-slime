local utils = require("slime.utils")

local M = {}

function M.setup(colors, config)
    -- Search highlights
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
    utils.highlight("Substitute", {
        fg = colors.bg,
        bg = colors.accent3
    }, config)

    -- QuickFix and Location List
    utils.highlight("QuickFixLine", {
        bg = colors.line,
        bold = true
    }, config)
    utils.highlight("qfLineNr", {
        fg = colors.accent1
    }, config)
    utils.highlight("qfFileName", {
        fg = colors.declaration
    }, config)

    -- Hop/Leap (motion plugins)
    utils.highlight("HopNextKey", {
        fg = colors.accent2,
        bold = true
    }, config)
    utils.highlight("HopNextKey1", {
        fg = colors.accent1,
        bold = true
    }, config)
    utils.highlight("HopNextKey2", {
        fg = colors.accent3
    }, config)
    utils.highlight("HopUnmatched", {
        fg = colors.comment
    }, config)

    utils.highlight("LeapMatch", {
        fg = colors.accent2,
        bold = true
    }, config)
    utils.highlight("LeapLabelPrimary", {
        fg = colors.accent1,
        bold = true
    }, config)
    utils.highlight("LeapLabelSecondary", {
        fg = colors.accent3
    }, config)
    utils.highlight("LeapBackdrop", {
        fg = colors.comment
    }, config)

    -- Flash.nvim
    utils.highlight("FlashMatch", {
        fg = colors.accent1,
        bg = colors.line
    }, config)
    utils.highlight("FlashCurrent", {
        fg = colors.bg,
        bg = colors.accent2
    }, config)
    utils.highlight("FlashLabel", {
        fg = colors.bg,
        bg = colors.accent1,
        bold = true
    }, config)
    utils.highlight("FlashPrompt", {
        fg = colors.fg,
        bg = colors.line
    }, config)
    utils.highlight("FlashPromptIcon", {
        fg = colors.accent2
    }, config)
    utils.highlight("FlashBackdrop", {
        fg = colors.comment
    }, config)
end

return M
