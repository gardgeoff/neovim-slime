local utils = require("slime.utils")

local M = {}

function M.setup(colors, config)
    -- Comments
    utils.highlight("@comment", {
        fg = colors.comment,
        italic = config.italic_comments
    }, config)
    utils.highlight("@comment.documentation", {
        fg = colors.comment,
        italic = true
    }, config)

    -- Constants
    utils.highlight("@constant", {
        fg = colors.string
    }, config)
    utils.highlight("@constant.builtin", {
        fg = colors.number
    }, config)
    utils.highlight("@constant.macro", {
        fg = colors.declaration
    }, config)

    -- Strings
    utils.highlight("@string", {
        fg = colors.string
    }, config)
    utils.highlight("@string.documentation", {
        fg = colors.string,
        italic = true
    }, config)
    utils.highlight("@string.regexp", {
        fg = colors.accent2
    }, config)
    utils.highlight("@string.escape", {
        fg = colors.accent2
    }, config)
    utils.highlight("@string.special", {
        fg = colors.accent2
    }, config)
    utils.highlight("@string.special.symbol", {
        fg = colors.property
    }, config)
    utils.highlight("@string.special.url", {
        fg = colors.info,
        underline = true
    }, config)
    utils.highlight("@string.special.path", {
        fg = colors.string,
        underline = true
    }, config)

    -- Characters
    utils.highlight("@character", {
        fg = colors.string
    }, config)
    utils.highlight("@character.special", {
        fg = colors.accent2
    }, config)

    -- Numbers
    utils.highlight("@number", {
        fg = colors.number
    }, config)
    utils.highlight("@number.float", {
        fg = colors.number
    }, config)
    utils.highlight("@boolean", {
        fg = colors.number
    }, config)

    -- Functions
    utils.highlight("@function", {
        fg = colors.func,
        bold = config.bold_functions
    }, config)
    utils.highlight("@function.builtin", {
        fg = colors.func,
        italic = true
    }, config)
    utils.highlight("@function.call", {
        fg = colors.func
    }, config)
    utils.highlight("@function.macro", {
        fg = colors.declaration
    }, config)
    utils.highlight("@method", {
        fg = colors.method
    }, config)
    utils.highlight("@method.call", {
        fg = colors.method
    }, config)
    utils.highlight("@constructor", {
        fg = colors.declaration
    }, config)

    -- Keywords
    utils.highlight("@keyword", {
        fg = colors.keyword,
        italic = config.italic_keywords
    }, config)
    utils.highlight("@keyword.coroutine", {
        fg = colors.keyword
    }, config)
    utils.highlight("@keyword.function", {
        fg = colors.declaration
    }, config)
    utils.highlight("@keyword.operator", {
        fg = colors.keyword
    }, config)
    utils.highlight("@keyword.import", {
        fg = colors.declaration
    }, config)
    utils.highlight("@keyword.storage", {
        fg = colors.declaration
    }, config)
    utils.highlight("@keyword.repeat", {
        fg = colors.keyword
    }, config)
    utils.highlight("@keyword.return", {
        fg = colors.keyword
    }, config)
    utils.highlight("@keyword.debug", {
        fg = colors.keyword
    }, config)
    utils.highlight("@keyword.exception", {
        fg = colors.keyword
    }, config)
    utils.highlight("@keyword.conditional", {
        fg = colors.keyword
    }, config)
    utils.highlight("@keyword.conditional.ternary", {
        fg = colors.operator
    }, config)
    utils.highlight("@keyword.directive", {
        fg = colors.declaration
    }, config)
    utils.highlight("@keyword.directive.define", {
        fg = colors.declaration
    }, config)

    -- Operators
    utils.highlight("@operator", {
        fg = colors.operator
    }, config)

    -- Punctuation
    utils.highlight("@punctuation.delimiter", {
        fg = colors.operator
    }, config)
    utils.highlight("@punctuation.bracket", {
        fg = colors.operator
    }, config)
    utils.highlight("@punctuation.special", {
        fg = colors.operator
    }, config)

    -- Types
    utils.highlight("@type", {
        fg = colors.type
    }, config)
    utils.highlight("@type.builtin", {
        fg = colors.type,
        italic = true
    }, config)
    utils.highlight("@type.definition", {
        fg = colors.type
    }, config)
    utils.highlight("@type.qualifier", {
        fg = colors.keyword
    }, config)

    -- Identifiers
    utils.highlight("@variable", {
        fg = colors.fg
    }, config)
    utils.highlight("@variable.builtin", {
        fg = colors.fg,
        italic = true
    }, config)
    utils.highlight("@variable.parameter", {
        fg = colors.fg,
        italic = true
    }, config)
    utils.highlight("@variable.member", {
        fg = colors.property
    }, config)

    -- Properties
    utils.highlight("@property", {
        fg = colors.property
    }, config)
    utils.highlight("@field", {
        fg = colors.property
    }, config)

    -- Namespaces
    utils.highlight("@module", {
        fg = colors.type
    }, config)
    utils.highlight("@namespace", {
        fg = colors.type
    }, config)

    -- Labels
    utils.highlight("@label", {
        fg = colors.keyword
    }, config)

    -- Attributes
    utils.highlight("@attribute", {
        fg = colors.declaration
    }, config)
    utils.highlight("@attribute.builtin", {
        fg = colors.declaration,
        italic = true
    }, config)

    -- Tags (for markup languages)
    utils.highlight("@tag", {
        fg = colors.declaration
    }, config)
    utils.highlight("@tag.attribute", {
        fg = colors.property
    }, config)
    utils.highlight("@tag.delimiter", {
        fg = colors.operator
    }, config)

    -- Markup
    utils.highlight("@markup.strong", {
        bold = true
    }, config)
    utils.highlight("@markup.italic", {
        italic = true
    }, config)
    utils.highlight("@markup.strikethrough", {
        strikethrough = true
    }, config)
    utils.highlight("@markup.underline", {
        underline = true
    }, config)
    utils.highlight("@markup.heading", {
        fg = colors.declaration,
        bold = true
    }, config)
    utils.highlight("@markup.heading.1", {
        fg = colors.declaration,
        bold = true
    }, config)
    utils.highlight("@markup.heading.2", {
        fg = colors.func,
        bold = true
    }, config)
    utils.highlight("@markup.heading.3", {
        fg = colors.type,
        bold = true
    }, config)
    utils.highlight("@markup.heading.4", {
        fg = colors.keyword,
        bold = true
    }, config)
    utils.highlight("@markup.heading.5", {
        fg = colors.property,
        bold = true
    }, config)
    utils.highlight("@markup.heading.6", {
        fg = colors.string,
        bold = true
    }, config)
    utils.highlight("@markup.quote", {
        fg = colors.comment,
        italic = true
    }, config)
    utils.highlight("@markup.math", {
        fg = colors.number
    }, config)
    utils.highlight("@markup.link", {
        fg = colors.info,
        underline = true
    }, config)
    utils.highlight("@markup.link.label", {
        fg = colors.string
    }, config)
    utils.highlight("@markup.link.url", {
        fg = colors.info,
        underline = true
    }, config)
    utils.highlight("@markup.raw", {
        fg = colors.string
    }, config)
    utils.highlight("@markup.raw.block", {
        fg = colors.string
    }, config)
    utils.highlight("@markup.list", {
        fg = colors.operator
    }, config)
    utils.highlight("@markup.list.checked", {
        fg = colors.git_add
    }, config)
    utils.highlight("@markup.list.unchecked", {
        fg = colors.comment
    }, config)

    -- Diff
    utils.highlight("@diff.plus", {
        fg = colors.git_add
    }, config)
    utils.highlight("@diff.minus", {
        fg = colors.git_delete
    }, config)
    utils.highlight("@diff.delta", {
        fg = colors.git_change
    }, config)
end

return M
