local telescope = require 'telescope'

--[[
vim.keymap.set('n', '<leader>hs', function()
  local word = vim.fn.expand '<cword>'
  vim.cmd('!hoogle ' .. word)
end, { noremap = true, silent = true, buffer = 0 })
]]

vim.keymap.set('n', '<leader>hs', function()
  telescope.extensions.hoogle.hoogle {
    default_text = vim.fn.expand '<cword>',
  }
end, { buffer = 0 })
