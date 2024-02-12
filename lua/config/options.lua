local opt = vim.opt
local g = vim.g

opt.tabstop = 4 -- A TAB character looks like 4 spaces
opt.expandtab = true -- Pressing TAB key will insert spaces instead of TAB character
opt.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
opt.shiftwidth = 4 -- Number of spaces inserted when indenting
opt.number = true -- Need me some line number

opt.relativenumber = false -- Don't like relative numbers
opt.termguicolors = true -- Want the terminal to have my colors too
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- line wrapping
opt.wrap = false -- disable line wrapping

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

g.autoformat = true -- Go ahead and auto format my files for me
g.mapleader = " " -- leader key set to space bar
