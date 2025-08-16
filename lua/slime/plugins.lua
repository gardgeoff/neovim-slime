local utils = require("slime.utils")

local M = {}

-- Get the directory path for plugins
local function get_plugins_dir()
    local info = debug.getinfo(1, "S")
    local current_file = info.source:sub(2) -- Remove the '@' prefix
    local current_dir = vim.fn.fnamemodify(current_file, ":h")
    return current_dir .. "/plugins"
end

function M.setup(colors, config)
    if not config.plugins.auto_enable then
        return
    end

    local plugins_dir = get_plugins_dir()

    -- Get all .lua files in the plugins directory
    local plugin_files = vim.fn.glob(plugins_dir .. "/*.lua", false, true)

    for _, file_path in ipairs(plugin_files) do
        local file_name = vim.fn.fnamemodify(file_path, ":t:r") -- Get filename without extension

        -- Check if plugin is enabled in config
        if config.plugins[file_name] ~= false then
            local module_name = "slime.plugins." .. file_name

            -- Safely require and setup each plugin
            local ok, plugin_module = pcall(require, module_name)
            if ok and plugin_module.setup then
                local success, err = pcall(plugin_module.setup, colors, config)
                if not success then
                    vim.notify("slime: Error setting up plugin " .. file_name .. ": " .. err, vim.log.levels.WARN)
                end
            end
        end
    end
end

return M
