-- Neovide

-- Disable compatibility with old vi
vim.opt.compatible = false
-- Do not detect file type initially
vim.cmd('filetype off')

-- Sets the leader key for custom shortcuts to the spacebar (' ')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Enable absolute line numbers
vim.opt.number = true

-- Backspace works in insert mode. '2' means you can backspace over:
-- - Indentation
-- - End of line
-- - Start of insert
vim.opt.backspace = '2'

-- Tabs and indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
-- Convert tabs to spaces
vim.opt.expandtab = true

-- Set the Gui font for Neovim
vim.opt.guifont = "Consolas:h16"

-- Highlight search results
vim.opt.hlsearch = true

-- Set color support
vim.opt.termguicolors = true -- modern equivalent of t_Co=256

-- Enable command-line completion menu
vim.opt.wildmenu = true

-- Enable syntax highlighting
vim.cmd('syntax on')

-- partial commands in the bottom right
vim.opt.showcmd = true

-- Always show the status line
vim.opt.laststatus = 2

-- Highlights the current line for better visibility.
vim.opt.cursorline = true

-- Automatically reloads a file if it changes on disk
vim.opt.autoread = true

-- Use system clipboard for all yank, delete, change, and paste operations
vim.opt.clipboard = "unnamedplus"
-- Keep deletes local, but yanks go to system clipboard
vim.keymap.set({"n", "v"}, "d", '"_d')

-- Disable MiddleMouse in normal mode
vim.api.nvim_set_keymap('n', '<MiddleMouse>', '<Nop>', { noremap = true, silent = true })

-- Disable MiddleMouse in insert mode
vim.api.nvim_set_keymap('i', '<MiddleMouse>', '<Nop>', { noremap = true, silent = true })

-- Toggle relative line numbers with <leader>rn
vim.keymap.set("n", "<leader>rn", function()
    vim.opt.relativenumber = not vim.opt.relativenumber:get()
end, { desc = "Toggle relative line numbers" })

-- Clear search highlights with <leader>h
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

