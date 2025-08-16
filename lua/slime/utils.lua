local M = {}

function M.hex_to_rgb(hex)
    hex = hex:gsub("#", "")
    return {
        r = tonumber(hex:sub(1, 2), 16),
        g = tonumber(hex:sub(3, 4), 16),
        b = tonumber(hex:sub(5, 6), 16)
    }
end

function M.rgb_to_hex(rgb)
    return string.format("#%02x%02x%02x", rgb.r, rgb.g, rgb.b)
end

function M.darken(hex, amount)
    local rgb = M.hex_to_rgb(hex)
    rgb.r = math.max(0, math.floor(rgb.r * (1 - amount)))
    rgb.g = math.max(0, math.floor(rgb.g * (1 - amount)))
    rgb.b = math.max(0, math.floor(rgb.b * (1 - amount)))
    return M.rgb_to_hex(rgb)
end

function M.lighten(hex, amount)
    local rgb = M.hex_to_rgb(hex)
    rgb.r = math.min(255, math.floor(rgb.r + (255 - rgb.r) * amount))
    rgb.g = math.min(255, math.floor(rgb.g + (255 - rgb.g) * amount))
    rgb.b = math.min(255, math.floor(rgb.b + (255 - rgb.b) * amount))
    return M.rgb_to_hex(rgb)
end

-- amount: 0-1, where 0 is color1 and 1 is color2
function M.blend(hex1, hex2, amount)
    local rgb1 = M.hex_to_rgb(hex1)
    local rgb2 = M.hex_to_rgb(hex2)

    local rgb = {
        r = math.floor(rgb1.r + (rgb2.r - rgb1.r) * amount),
        g = math.floor(rgb1.g + (rgb2.g - rgb1.g) * amount),
        b = math.floor(rgb1.b + (rgb2.b - rgb1.b) * amount)
    }

    return M.rgb_to_hex(rgb)
end

function M.highlight(group, spec, config)
    local hl = {}

    for k, v in pairs(spec) do
        hl[k] = v
    end

    if config.transparent and (group:match("^Normal") or group:match("Background")) then
        hl.bg = "NONE"
    end

    if config.italic_comments and group:match("Comment") then
        hl.italic = true
    end

    if config.italic_keywords and group:match("Keyword") then
        hl.italic = true
    end

    if config.bold_functions and (group:match("Function") or group:match("Method")) then
        hl.bold = true
    end

    vim.api.nvim_set_hl(0, group, hl)
end

function M.link(from, to)
    vim.api.nvim_set_hl(0, from, {
        link = to
    })
end

function M.plugin_loaded(plugin_name)
    local ok, _ = pcall(require, plugin_name)
    if ok then
        return true
    end

    if vim.fn.exists("*" .. plugin_name) == 1 then
        return true
    end

    -- Check common plugin patterns for better compatibility
    local patterns = {plugin_name, plugin_name .. ".nvim", "nvim-" .. plugin_name}

    for _, pattern in ipairs(patterns) do
        if #vim.api.nvim_get_runtime_file("plugin/" .. pattern .. ".vim", false) > 0 or
            #vim.api.nvim_get_runtime_file("plugin/" .. pattern .. ".lua", false) > 0 then
            return true
        end
    end

    return false
end

return M
