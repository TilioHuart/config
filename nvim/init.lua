vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

-- line number
vim.opt.number = true
vim.opt.relativenumber = true
vim.o.undofile = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup('plugins')

vim.api.nvim_set_keymap('n', '<S-t>', ':Neotree toggle<CR>', {noremap = true, silent = true})

vim.keymap.set("n", "<D-h>", "<C-\\><C-N><C-w>h", { desc = 'move left in normal mode' })
vim.keymap.set("n", "<D-j>", "<C-\\><C-N><C-w>j", { desc = 'move down in normal mode' })
vim.keymap.set("n", "<D-k>", "<C-\\><C-N><C-w>k", { desc = 'move up in normal mode' })
vim.keymap.set("n", "<D-l>", "<C-\\><C-N><C-w>l", { desc = 'move right in normal mode' })

vim.keymap.set("n", "<C-t>g", ":Telescope live_grep<CR>",
    { noremap = true, silent = true, desc = 'open live grep with Telescope' })
vim.keymap.set("n", "<C-t>f", ":Telescope find_files<CR>",
    { noremap = true, silent = true, desc = 'open file search with Telescope' })

vim.cmd.colorscheme "cyberdream"
