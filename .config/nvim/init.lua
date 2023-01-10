-- [[ Setting options ]]
-- See `:help vim.o`
--
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--single-branch",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end

vim.opt.runtimepath:prepend(lazypath)


-- Lazy setup (package manager)
require("nicholascostadev/plugins")
require("nicholascostadev/basics")
require("nicholascostadev/telescope")
require("nicholascostadev/lualine")
require("nicholascostadev/gitsigns")
require("nicholascostadev/indentblankline")
-- Enable Comment.nvim
require("Comment").setup()
-- MY OWN KEYBINDINGS
require("nicholascostadev/mappings")
-- LSP config
require("nicholascostadev/lspconfig")
require("nicholascostadev/cmp")

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
