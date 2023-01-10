require('toggleterm').setup {
  open_mapping = [[<c-t>]],
  size = function(term)
    if term.direction == "horizontal" then
      return 15
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.4
    end
  end,
  direction = 'float',
  close_on_exit = true,
  float_opts = {
    border = 'curved',
  },
  winbar = {
    enabled = true,
    name_formatter = function(term)
      return term.name
    end
  }
}
