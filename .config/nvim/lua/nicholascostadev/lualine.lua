-- Set lualine as statusline
-- See `:help lualine.txt`
require('lualine').setup {
  options = {
    icons_enabled = true,
    component_separators = { left = '', right = ''},
    -- always_divide_middle = false,
    section_separators = '',
  },
}
