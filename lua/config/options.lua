-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Fix paste indentation
vim.opt.paste = false -- Ensure paste mode is off by default
vim.opt.formatoptions:remove("r") -- Don't continue comments on new lines automatically
vim.opt.formatoptions:remove("o") -- Don't insert comment leader after 'o' or 'O'
vim.opt.clipboard = "unnamedplus"
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.autoindent = true
vim.opt.smartindent = false

-- Work around nvim-treesitter vim-query mismatch in some packaged Neovim builds.
-- Override the vim highlights query with a minimal safe query.
pcall(function()
  vim.treesitter.query.set("vim", "highlights", "(comment) @comment")
end)
