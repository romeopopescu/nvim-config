return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    -- This disables the inline text at the end of the line
    opts.diagnostics.virtual_text = false
  end,
}
