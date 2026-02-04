-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Fix paste indentation
vim.opt.paste = false -- Ensure paste mode is off by default
vim.opt.formatoptions:remove("r") -- Don't continue comments on new lines automatically
vim.opt.formatoptions:remove("o") -- Don't insert comment leader after 'o' or 'O'
vim.opt.clipboard = "unnamedplus"
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.shiftwidth = 2 -- Size of an indent
vim.opt.smartindent = true -- Insert indents automatically
vim.opt.tabstop = 2 -- Number of spaces tabs count for
vim.opt.softtabstop = 2 -- See help "softtabstop"
