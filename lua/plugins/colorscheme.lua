-- Colorscheme, driven by ~/.config/theme/current ("light" | "dark").
-- Flip it with the `theme` command; running instances are live-reloaded over their socket.
local mode = require("config.theme").mode()

return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      background = { light = "latte", dark = "mocha" },
      integrations = {
        blink_cmp = true,
        gitsigns = true,
        lsp_trouble = true,
        mason = true,
        noice = true,
        notify = true,
        telescope = true,
        treesitter = true,
        which_key = true,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = mode == "light" and "catppuccin-latte" or "catppuccin-mocha",
    },
  },
}
