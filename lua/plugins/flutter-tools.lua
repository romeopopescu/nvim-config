return {
  {
    "nvim-flutter/flutter-tools.nvim",
    ft = "dart",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = function()
      local lsp = {}
      local ok, blink = pcall(require, "blink.cmp")
      if ok then
        lsp.capabilities = function(default_caps)
          return blink.get_lsp_capabilities(default_caps)
        end
      end
      return { lsp = lsp }
    end,
    config = function(_, opts)
      require("flutter-tools").setup(opts)
    end,
  },
  {
    "neovim/nvim-lspconfig",
    optional = true,
    opts = {
      servers = {
        -- flutter-tools starts and owns dartls; do not register it here too
        dartls = false,
      },
    },
  },
}
