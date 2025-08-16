-- Main slime colorscheme module
local M = {}

local config = require("slime.config")
local utils = require("slime.utils")

-- Load modules dynamically
local function load_palette(variant)
    local ok, palette = pcall(require, "slime.palettes." .. variant)
    if not ok then
        vim.notify("slime: Unknown variant '" .. variant .. "', falling back to 'dark'", vim.log.levels.WARN)
        palette = require("slime.palettes.dark")
    end
    return palette
end

local function load_groups(colors, user_config)
    local groups = {"editor", "syntax", "diagnostics", "treesitter", "lsp", "git", "search", "terminal"}

    for _, group in ipairs(groups) do
        local ok, module = pcall(require, "slime.groups." .. group)
        if ok and module.setup then
            local success, err = pcall(module.setup, colors, user_config)
            if not success then
                vim.notify("slime: Error loading group " .. group .. ": " .. err, vim.log.levels.WARN)
            end
        end
    end
end

local function load_languages(colors, user_config)
    if not user_config.languages.auto_enable then
        return
    end

    local languages = {"php", "javascript"}

    for _, lang in ipairs(languages) do
        if user_config.languages[lang] ~= false then
            local ok, module = pcall(require, "slime.languages." .. lang)
            if ok and module.setup then
                local success, err = pcall(module.setup, colors, user_config)
                if not success then
                    vim.notify("slime: Error loading language " .. lang .. ": " .. err, vim.log.levels.WARN)
                end
            end
        end
    end
end

local function set_terminal_colors(colors)
    if colors.terminal_colors then
        for name, color in pairs(colors.terminal_colors) do
            vim.g[name] = color
        end
    end
end

function M.setup(opts)
    -- Setup configuration
    local user_config = config.setup(opts)

    -- Clear existing highlights
    vim.cmd("highlight clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    -- Load palette for selected variant
    local palette = load_palette(user_config.variant)
    local colors = palette.colors

    -- Load all highlight groups
    load_groups(colors, user_config)

    -- Load language-specific highlights
    load_languages(colors, user_config)

    -- Load plugin-specific highlights
    local plugins = require("slime.plugins")
    plugins.setup(colors, user_config)

    -- Set terminal colors
    set_terminal_colors(palette)

    -- Set colorscheme name
    vim.g.colors_name = "slime"
end

-- Expose config for external access
M.config = config

return M
