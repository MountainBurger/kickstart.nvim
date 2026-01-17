local telescope = require 'telescope'

vim.keymap.set('n', '<leader>hs', function()
  telescope.extensions.hoogle.hoogle {
    default_text = vim.fn.expand '<cword>',
  }
end, { buffer = 0 })
