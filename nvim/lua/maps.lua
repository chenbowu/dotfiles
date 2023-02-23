local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

local keymap = vim.keymap.set

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = 'n',
--   insert_mode = 'i',
--   visual_mode = 'v',
--   visual_block_mode = 'x',
--   term_mode = 't',
--   command_mode = 'c',

-- Press jk fast to exit insert mode
-- keymap("i", "jj", "<ESC>", opts)

-- No search highlight
keymap("n", "<C-n>", ":nohl<Return>", { silent = true })

-- Do not yank with x
keymap('n', 'x', '"_x')

-- Increment/decrement
keymap('n', '+', '<C-a>')
keymap('n', '-', '<C-x>')

-- Delete a word backwards
keymap('n', 'dw', 'vb"_d')

-- Select all
keymap('n', '<C-a>', 'gg<S-v>G')

-- Move cursor
keymap("n", "H", "^", opts)
keymap("n", "L", "$", opts)
keymap("v", "H", "^", opts)
keymap("v", "L", "$", opts)

-- New tab
keymap('n', 'te', ':tabedit<Return>', { silent = true })
-- Split window
-- keymap('n', 'ss', ':split<Return><C-w>w', { silent = true })
-- keymap('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })
-- Move window
keymap('n', '<Space>', '<C-w>w')
keymap('', '<C-j>', '<C-w>j')
keymap('', '<C-k>', '<C-w>k')
keymap('', '<C-l>', '<C-w>l')
keymap('', '<C-h>', '<C-w>h')
