local M = {}

local ok, error = pcall(require, 'hyper.error')
if not ok then
    return vim.api.nvim_err_writeln(require('hyper.const.error').import)
end

-- check if a string is a valid 6-digit hex value
local is_valid_hex = function(hex)
    return hex:match('^#?([a-fA-F0-9][a-fA-F0-9][a-fA-F0-9][a-fA-F0-9][a-fA-F0-9][a-fA-F0-9])$') ~= nil
end

function M.generate()
    local config_ok, config_or_err = pcall(require, 'hyper.config')
    if not config_ok then return error.throw(config_or_err) end

    local options = config_or_err.options

    ---@type table<string, string>
    local colors = {}

    if type(options.colors) == 'string' then
        local colors_ok, colors_or_err = pcall(
            require,
            'hyper.colors.' .. options.colors
        )
        if not colors_ok then return error.throw(colors_or_err) end

        colors = colors_or_err.colors
    end

    ---@type table<string, HighlightData>
    local highlights = {}

    if type(options.highlights) == 'string' then
        local highlights_ok, highlights_or_err = pcall(
            require,
            'hyper.highlights.' .. options.highlights
        )
        if not highlights_ok then return error.throw(highlights_or_err) end

        highlights = highlights_or_err
    end

    local highlight_groups = {}

    for group, proto_highlight in pairs(highlights) do
        local highlight = proto_highlight

        local fg_ok, fg_or_err = M.get_color(group, highlight.fg, colors)
        if not fg_ok then return error.throw(fg_or_err) end

        local bg_ok, bg_or_err = M.get_color(group, highlight.bg, colors)
        if not bg_ok then return error.throw(bg_or_err) end

        highlight.fg = fg_or_err
        highlight.bg = bg_or_err

        highlight_groups[group] = highlight
    end

    return highlight_groups
end

---@param group_name string
---@param color string
---@param colors table<string, string>
---@return boolean, string
function M.get_color(group_name, color, colors)
    if color == nil then
        return true, 'none'
    end

    if type(color) ~= 'string' then
        return false, error.throw(
            'hyper.engine.get_color(' .. group_name .. ', ' .. color .. ', ... ) -- Error: color must be a string'
        )
    end

    if colors[color:lower()] ~= nil then
        return true, colors[color:lower()]
    end
    if is_valid_hex(color) then
        return true, color
    end
    if color:lower() == 'none' then
        return true, 'none'
    end

    return false, error.throw(
        'hyper.engine.get_color(' .. group_name .. ', ' .. color .. ', ... ) -- Error: unhandled color value `' .. color .. '`'
    )
end

return M
