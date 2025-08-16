local utils = require("slime.utils")

local M = {}

function M.setup(colors, config)
    -- PHP-specific highlights
    utils.highlight("@keyword.function.php", {
        fg = colors.declaration
    }, config)
    utils.highlight("@keyword.php", {
        fg = colors.keyword
    }, config)
    utils.highlight("@function.php", {
        fg = colors.func
    }, config)
    utils.highlight("@method.php", {
        fg = colors.method
    }, config)
    utils.highlight("@property.php", {
        fg = colors.property
    }, config)
    utils.highlight("@type.php", {
        fg = colors.type
    }, config)
    utils.highlight("@variable.parameter.php", {
        fg = colors.fg,
        italic = true
    }, config)

    -- Blade directives (treat directives like control keywords)
    utils.highlight("@keyword.blade", {
        fg = colors.keyword
    }, config)
    utils.highlight("@keyword.directive.blade", {
        fg = colors.keyword,
        bold = true
    }, config)
    utils.highlight("@function.blade", {
        fg = colors.func
    }, config)
    utils.highlight("@method.blade", {
        fg = colors.method
    }, config)
    utils.highlight("@property.blade", {
        fg = colors.property
    }, config)
    utils.highlight("@string.blade", {
        fg = colors.string
    }, config)
end

return M
