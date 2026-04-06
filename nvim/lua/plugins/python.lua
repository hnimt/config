return {
  {
    "benomahony/uv.nvim",
    -- This ensures it loads when you open a Python file
    ft = "python",
    opts = {
      auto_activate_venv = true,
    },
    -- In LazyVim, we often want to make sure it runs
    -- before the LSP attaches
    lazy = false,
  },
}
