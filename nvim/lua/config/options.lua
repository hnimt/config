-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

opt.shiftwidth = 4 -- Size of an indent
opt.tabstop = 4 -- Number of spaces tabs count for
opt.softtabstop = 4 -- Number of spaces a tab counts for while editing
opt.expandtab = true -- Use spaces instead of tabs

vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.exrc = true -- Allows loading local .nvim.lua files

-- Make always root where i open
vim.g.root_spec = { "cwd" }

-- Automatically restore the session when starting Neovim
vim.api.nvim_create_autocmd("VimEnter", {
  group = vim.api.nvim_create_augroup("restore_session", { clear = true }),
  callback = function()
    if vim.fn.argc() == 0 and not vim.g.started_with_stdin then
      require("persistence").load()
    end
  end,
})
