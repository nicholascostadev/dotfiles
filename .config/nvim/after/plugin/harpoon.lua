local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>ma", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end, { desc = "Go to harpoon 1" })
vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end, { desc = "Go to harpoon 1" })
vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end, { desc = "Go to harpoon 1" })
vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end, { desc = "Go to harpoon 1" })
