return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gdscript = {},
      },
    },
  },
  {
    "mfussenegger/nvim-dap",
    optional = true,
    dependencies = {
      {
        "rcarriga/nvim-dap-ui",
        "theHamsta/nvim-dap-virtual-text",
      },
    },
    opts = function()
      local dap = require("dap")

      -- 1. Define the adapter (how to connect to Godot)
      dap.adapters.gdscript = {
        type = "server",
        host = "127.0.0.1",
        port = 6006,
      }

      -- 2. Define the configuration (the settings for the debug session)
      dap.configurations.gdscript = {
        {
          type = "gdscript",
          request = "launch",
          name = "Launch Game",
          -- This points to your Godot executable
          -- On macOS, this is usually:
          project = "${workspaceFolder}",
          launch_game = true,
        },
        {
          type = "gdscript",
          request = "launch",
          name = "Connect to Running Game",
          project = "${workspaceFolder}",
          launch_game = false,
        },
      }
    end,
  },
}
