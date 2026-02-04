return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      -- Ensure the list exists
      opts.ensure_installed = opts.ensure_installed or {}

      -- Filter out php-cs-fixer from the list
      opts.ensure_installed = vim.tbl_filter(function(pkg)
        return pkg ~= "php-cs-fixer"
      end, opts.ensure_installed)
    end,
  },
}
