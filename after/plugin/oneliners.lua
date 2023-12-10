require("chatgpt").setup({})
-- Require and call setup function somewhere in your init.lua
require('asciiart').setup {
  render = {
    min_padding = 5,
    show_label = true,
    use_dither = true,
    foreground_color = true,
    background_color = true
  },
  events = {
    update_on_nvim_resize = true,
  },
}

vim.g.codeium_disable_bindings = true
