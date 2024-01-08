local M = {}

local ok, error = pcall(require, 'hyper.error')
if not ok then
    return vim.api.nvim_err_writeln(require('hyper.const.error').import)
end

local colors_ok, colors_or_err = pcall(require, 'hyper.colors')
if not colors_ok then return error.throw(colors_or_err) end

local colors = colors_or_err

function M.load(opts)
    print(opts)
end

function M.set_highlight()
    vim.cmd("hi clear")

    if vim.fn.exists("syntax on") then
        vim.cmd("syntax reset")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = 'hyper'

    for group, c in pairs(colors.get()) do
        vim.api.nvim_set_hl(0, group, c)
    end
end

return M
