return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      mappings = {
        i = {
          -- Map "find files (no ignore)" to Ctrl-g in Insert Mode
          ["<C-g>"] = function()
            local action_state = require("telescope.actions.state")
            local line = action_state.get_current_line()
            -- This is the same function Alt-i was mapped to
            LazyVim.pick("find_files", { no_ignore = true, default_text = line })()
          end,

          -- Unmap the original, non-working Alt-i
          ["<a-i>"] = nil,
        },
      },
    },
  },
}
