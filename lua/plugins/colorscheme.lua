-- Colorscheme, driven by ~/.config/theme/current ("light" | "dark").
-- Flip it with the `theme` command; running instances are live-reloaded over their socket.
local mode = require("config.theme").mode()

return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night", -- dark variant; "day" is selected by name below
      light_style = "day",
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = mode == "light" and "tokyonight-day" or "tokyonight-night",
    },
  },
}
