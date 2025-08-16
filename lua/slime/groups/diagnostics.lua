local utils = require("slime.utils")

local M = {}

function M.setup(colors, config)
    -- Diagnostic virtual text and signs
    utils.highlight("DiagnosticError", {
        fg = colors.error
    }, config)
    utils.highlight("DiagnosticWarn", {
        fg = colors.warning
    }, config)
    utils.highlight("DiagnosticInfo", {
        fg = colors.info
    }, config)
    utils.highlight("DiagnosticHint", {
        fg = colors.hint
    }, config)
    utils.highlight("DiagnosticOk", {
        fg = colors.git_add
    }, config)

    -- Diagnostic underlines
    utils.highlight("DiagnosticUnderlineError", {
        sp = colors.error,
        undercurl = true
    }, config)
    utils.highlight("DiagnosticUnderlineWarn", {
        sp = colors.warning,
        undercurl = true
    }, config)
    utils.highlight("DiagnosticUnderlineInfo", {
        sp = colors.info,
        undercurl = true
    }, config)
    utils.highlight("DiagnosticUnderlineHint", {
        sp = colors.hint,
        undercurl = true
    }, config)
    utils.highlight("DiagnosticUnderlineOk", {
        sp = colors.git_add,
        undercurl = true
    }, config)

    -- Diagnostic floating windows
    utils.highlight("DiagnosticFloatingError", {
        fg = colors.error
    }, config)
    utils.highlight("DiagnosticFloatingWarn", {
        fg = colors.warning
    }, config)
    utils.highlight("DiagnosticFloatingInfo", {
        fg = colors.info
    }, config)
    utils.highlight("DiagnosticFloatingHint", {
        fg = colors.hint
    }, config)
    utils.highlight("DiagnosticFloatingOk", {
        fg = colors.git_add
    }, config)

    -- Diagnostic signs
    utils.highlight("DiagnosticSignError", {
        fg = colors.error,
        bg = colors.bg
    }, config)
    utils.highlight("DiagnosticSignWarn", {
        fg = colors.warning,
        bg = colors.bg
    }, config)
    utils.highlight("DiagnosticSignInfo", {
        fg = colors.info,
        bg = colors.bg
    }, config)
    utils.highlight("DiagnosticSignHint", {
        fg = colors.hint,
        bg = colors.bg
    }, config)
    utils.highlight("DiagnosticSignOk", {
        fg = colors.git_add,
        bg = colors.bg
    }, config)

    -- Health check
    utils.highlight("healthError", {
        fg = colors.error
    }, config)
    utils.highlight("healthSuccess", {
        fg = colors.git_add
    }, config)
    utils.highlight("healthWarning", {
        fg = colors.warning
    }, config)
end

return M
