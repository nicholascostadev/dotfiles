local wk = require("which-key")

wk.register({
  s = {
    name = "Search",
    f = { "<cmd>Telescope find_files<cr>", "Find File" },
    h = { "<cmd>Telescope help_tags<cr>", 'Search Help' },
    w = { "<cmd>Telescope grep_string<cr>", "Search Current Word" },
    g = { "<cmd>Telescope live_grep<cr>", "Search by Grep" },
    d = { "<cmd>Telescope diagnosticis<cr>", "Search Diagnostics" },
    t = { "<cmd>TodoTelescope<cr>", "Search Todos" }
  },
  e = { "<cmd>NvimTreeToggle<cr>", "Toggle Tree" },
  c = {
    name = "Closing Buffers",
    c = { "<cmd>bd<cr>", "Close current buffer" },
    a = { "<cmd>%bd|e#|bd#<cr>", "Close all buffers but current" }
  },
  r = {
    name = "rename",
    n = { '<cmd>lua require("renamer").rename()<cr>', "Rename under cursor" },
  },
  g = {
    name = "Goto / Git",
    d = { "Goto Definition" },
    r = { "Goto References" },
    I = { "Goto Implementation" },
    g = { "<cmd>LazyGit<cr>", "Open Lazy Git" }
  },
  l = {
    f = { "<cmd>Format<cr><cmd>:w<cr>", "Format file with LSP" },
  }
}, { prefix = "<leader>" })
