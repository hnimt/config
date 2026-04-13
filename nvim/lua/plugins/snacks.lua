return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          hidden = true,
          ignored = false,
          auto_close = true,
          layout = {
            cycle = false,
            preview = false,
            layout = {
              backdrop = false,
              position = "float",
              border = "rounded",
              width = 0.4,
              height = 0.85,
              box = "vertical",       -- <-- REQUIRED: root must have box
              { win = "input", height = 1, border = "rounded", title = " Explorer ", title_pos = "center" },
              { win = "list", border = "none" },
            },
          },
        },
      },
    },
  },
}
