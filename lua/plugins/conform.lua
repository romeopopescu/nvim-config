return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      -- CRITICAL FIX: This overrides any default Vue formatter (Prettier)
      -- and ensures NOTHING runs on save for .vue files.
      opts.formatters_by_ft.vue = {}

      -- Optional: You can also set it to nil to remove the key entirely
      -- opts.formatters_by_ft.vue = nil

      -- Optional: Remove format_on_save entirely if you don't use it elsewhere
      if opts.format_on_save then
        opts.format_on_save = nil
      end

      return opts
    end,
  },
}
