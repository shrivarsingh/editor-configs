-- Neovim

-- Disable compatibility with old vi
vim.opt.compatible = false
-- Do not detect file type initially
vim.cmd("filetype off")

-- Sets the leader key for custom shortcuts to the spacebar (" ")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Enable absolute line numbers
vim.opt.number = true

-- Backspace works in insert mode. "2" means you can backspace over:
vim.opt.backspace = "2"

-- Tabs and indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

-- Set the Gui font for Neovim
vim.opt.guifont = "Consolas:h16"

-- Highlight search results
vim.opt.hlsearch = true

-- Set color support
vim.opt.termguicolors = true

-- Enable command-line completion menu
vim.opt.wildmenu = true

-- Enable syntax highlighting
vim.cmd("syntax on")

-- partial commands in the bottom right
vim.opt.showcmd = true

-- Always show the status line
vim.opt.laststatus = 2

-- Highlights the current line for better visibility.
vim.opt.cursorline = true

-- Automatically reloads a file if it changes on disk
vim.opt.autoread = true

-- Disable MiddleMouse in normal mode
vim.api.nvim_set_keymap("n", "<MiddleMouse>", "<Nop>", { noremap = true, silent = true })

-- Disable MiddleMouse in insert mode
vim.api.nvim_set_keymap("i", "<MiddleMouse>", "<Nop>", { noremap = true, silent = true })

-- Custom function to insert an empty line below the cursor without entering insert mode
vim.keymap.set("n", "<leader>o", "<cmd>call append(line('.'), repeat([''], v:count1))<CR>", { desc = "add empty line below" })

-- <leader>rn Toggle Relative Line Numbers 
vim.keymap.set("n", "<leader>rn", function()
    vim.opt.relativenumber = not vim.opt.relativenumber:get()
end, { desc = "Toggle relative line numbers" })

-- <leader>/ Clear search highlights 
vim.keymap.set("n", "<leader>/", ":nohlsearch<CR>")

-- <leader>e Open netrw 
vim.keymap.set("n", "<leader>e", function()
    vim.cmd("Ex")
end, { silent = true })

-- <leader>t Open new tab terminal
vim.keymap.set("n", "<leader>t", function()
  vim.cmd("tabnew | terminal")
  vim.cmd("startinsert")
end)

