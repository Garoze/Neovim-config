local opts = { noremap = true, silent = true }

local function keymap(mode, key, command)
  vim.api.nvim_set_keymap(mode, key, command, opts)
end

-- Setting the Leader key
vim.g.leader = ';'
vim.g.maplocalleader = ';'

-- Create a new split in a given direction [ Alt + direction ]
keymap('n', '<M-l>', '<C-w>v')
keymap('n', '<M-k>', '<C-w>s')

-- Chance the split focus in a given direction [ Ctrl + direction ].
keymap('n', '<C-h>', '<C-w>h')
keymap('n', '<C-j>', '<C-w>j')
keymap('n', '<C-k>', '<C-w>k')
keymap('n', '<C-l>', '<C-w>l')

-- Resize a split
keymap('n', '<silent> <C-Up>',   ':resize +3<CR>')
keymap('n', '<silent> <C-Down>', ':resize -3<CR>')
keymap('n', '<silent> <C-Left>', ':vertical resize +3<CR>')
keymap('n', '<silent> <C-Right>',':vertical resize -3<CR>')

-- Move a line up or down [ Alt + direction ].
keymap('n', '<M-k>', ':m .-2<CR>==')
keymap('n', '<M-j>', ':m .+1<CR>==')

keymap('v', '<M-k>', ':m <-1<CR>gv=gv')
keymap('v', '<M-j>', ':m >+1<CR>gv=gv')

-- Move a visual block to the right or left.
keymap('v', '<', '<gv')
keymap('v', '>', '>gv')

-- Disable the use of arrow keys when using vim [VIM HARDMODE].
for _, key in pairs({'<Up>', '<Down>', '<Left>', '<Right>'}) do
  for _, mode in pairs({'n', 'i', 'v', 'c'}) do
    keymap(mode, key, '<Nop>')
  end
end
