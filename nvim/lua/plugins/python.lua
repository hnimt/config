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
  {
    "mfussenegger/nvim-dap-python",
    keys = {
      {
        "<leader>dPt",
        function()
          require("dap-python").test_method()
        end,
        desc = "Debug Method",
        ft = "python",
      },
    },
    config = function()
      -- Automatically use the .venv created by 'uv sync' or 'uv venv'
      local path = vim.fn.getcwd() .. "/.venv/bin/python"
      require("dap-python").setup(path)
    end,
  },
}
