-- <Space> as leader
vim.g.mapleader = ' '

-- Move visual mode selection
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move visual mode selection down' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move visual mode selection up' })

-- less movement of cursor
vim.keymap.set('n', 'J', 'mzJ`z', { desc = 'keep cursor on same line during j' })
vim.keymap.set('n', '<c-d>', '<c-d>zz', { desc = 'less movement of cursor during <c-d>' })
vim.keymap.set('n', '<c-u>', '<c-u>zz', { desc = 'less movement of cursor during <c-u>' })
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'less movement of cursor during n' })
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'less movement of cursor during n' })
vim.keymap.set('n', '{', '{zz', { desc = 'sentence jumps backward with less cursor motion' })
vim.keymap.set('n', '}', '}zz', { desc = 'sentence jumps forward with less cursor motion' })
vim.keymap.set('v', 'y', 'ygv<ESC>', { desc = 'Yank and stay where the cursor is at the end' })

-- Preserve text in buffer while overwriting
vim.keymap.set('x', '<leader>p', [["_dP]], { desc = '[P]reserve text in buffer during paste' })

-- Replace all instances of given word
vim.keymap.set('n', '<leader>sr', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = '[S]earch and [R]eplace' })

-- Make the file excutable
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true, desc = 'Make e[x]ecutable' })

-- Disable Q
vim.keymap.set('n', 'Q', '<nop>', { desc = 'Disable Q command' })

-- Clear highlights
vim.keymap.set({ 'n', 'i' }, '<Esc><Esc>', '<CMD>nohl<CR>', { desc = 'Remove highlights' })

-- Commandline mode movement
vim.keymap.set('c', '<C-F>', '<Right>', { desc = 'move [F]orward' })
vim.keymap.set('c', '<C-B>', '<Left>', { desc = 'move [B]ackward' })

-- Buffer navigation
vim.keymap.set('n', '<TAB>', '<cmd>bprevious<CR>', { desc = '[B]uffer [P]revious' })
vim.keymap.set('n', '<S-TAB>', '<cmd>bnext<CR>', { desc = '[B]uffer [N]ext' })
