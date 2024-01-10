local M = {}

local ok, error = pcall(require, 'hyper.error')
if not ok then
    return vim.api.nvim_err_writeln(require('hyper.const.error').import)
end

local config_ok, config_or_err = pcall(require, 'hyper.config')
if not config_ok then return error.throw(config_or_err) end

local config = config_or_err

function M.set_highlight()
    vim.cmd("hi clear")

    if vim.fn.exists("syntax on") then
        vim.cmd("syntax reset")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = 'hyper'

    local engine_ok, engine_or_err = pcall(require, 'hyper.engine')
    if not engine_ok then return error.throw(engine_or_err) end

    local highlight_groups = engine_or_err.generate()

    for group, c in pairs(highlight_groups) do
        vim.api.nvim_set_hl(0, group, c)
    end
end

function M.load()
    M.set_highlight()
end

M.setup = config.setup

return M
