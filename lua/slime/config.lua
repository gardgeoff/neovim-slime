-- Configuration module for slime colorscheme
local M = {}

-- Default configuration
M.defaults = {
    variant = "dark",
    transparent = false,
    italic_comments = true,
    italic_keywords = false,
    bold_functions = false,
    plugins = {
        auto_enable = true,
        telescope = true,
        neotree = true,
        rainbow = true
    },
    languages = {
        auto_enable = true,
        php = true,
        javascript = true
    }
}

-- Current configuration (will be merged with user options)
M.options = {}

-- Setup configuration with user options
function M.setup(user_opts)
    M.options = vim.tbl_deep_extend("force", M.defaults, user_opts or {})
    return M.options
end

-- Get current configuration
function M.get()
    return M.options
end

return M
