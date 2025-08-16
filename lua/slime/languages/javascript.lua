local utils = require("slime.utils")

local M = {}

function M.setup(colors, config)
    -- JavaScript/TypeScript specific highlights
    utils.highlight("@keyword.function.javascript", {
        fg = colors.declaration
    }, config)
    utils.highlight("@keyword.function.typescript", {
        fg = colors.declaration
    }, config)
    utils.highlight("@function.javascript", {
        fg = colors.func
    }, config)
    utils.highlight("@function.typescript", {
        fg = colors.func
    }, config)
    utils.highlight("@method.javascript", {
        fg = colors.method
    }, config)
    utils.highlight("@method.typescript", {
        fg = colors.method
    }, config)
    utils.highlight("@property.javascript", {
        fg = colors.property
    }, config)
    utils.highlight("@property.typescript", {
        fg = colors.property
    }, config)
    utils.highlight("@type.typescript", {
        fg = colors.type
    }, config)

    -- JSX/TSX
    utils.highlight("@tag.jsx", {
        fg = colors.declaration
    }, config)
    utils.highlight("@tag.tsx", {
        fg = colors.declaration
    }, config)
    utils.highlight("@tag.attribute.jsx", {
        fg = colors.property
    }, config)
    utils.highlight("@tag.attribute.tsx", {
        fg = colors.property
    }, config)

    -- Template literals
    utils.highlight("@string.template.javascript", {
        fg = colors.string
    }, config)
    utils.highlight("@string.template.typescript", {
        fg = colors.string
    }, config)
    utils.highlight("@punctuation.special.javascript", {
        fg = colors.accent2
    }, config)
    utils.highlight("@punctuation.special.typescript", {
        fg = colors.accent2
    }, config)
end

return M
