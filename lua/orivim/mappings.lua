-- mappings
local M = {}
local keymap = vim.keymap.set
local default_opts = { noremap = true, silent = true }

function M.keymap_setup()
  -- vim.api.nvim_set_keymap('n', 'x', 'C', {noremap = true})
  keymap({'n', 'v'}, 'gd', '<cmd>OpenNoteUnderCursor<CR>', default_opts)
  keymap({'n', 'v'}, '<A-q>', '<cmd>execute "normal \\<Plug>Markdown_OpenUrlUnderCursor"<CR>', default_opts)
  -- not work
  -- keymap({'n', 'v'}, '<leader>t', '<cmd>execute "normal \\<Plug>Markdown_OpenUrlUnderCursor"<CR>', default_opts)
  -- vim.cmd('nnoremap <leader>t :execute "normal \\<Plug>Markdown_OpenUrlUnderCursor"<CR>')
  vim.cmd('nnoremap <leader>t :execute "normal \\<Plug>Markdown_OpenUrlUnderCursor"')
end

return M
