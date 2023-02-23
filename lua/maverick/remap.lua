local nnoremap = require("maverick.keymap").nnoremap	
local noremap = require("maverick.keymap").noremap	

-- Moving between Splits
nnoremap("<C-h>","<C-w>h")
nnoremap("<C-j>","<C-w>j")
nnoremap("<C-k>","<C-w>k")
nnoremap("<C-l>","<C-w>l")
nnoremap("<C-s>","<cmd>vsplit<CR>")

-- Closing and saving
nnoremap("<C-q>","<cmd>q<CR>")

-- Cursor movement
nnoremap("<S-l>","$")
nnoremap("<S-h>","0")
nnoremap("<C-u>","<C-u>zz")
nnoremap("<C-d>","<C-d>zz")


nnoremap("<leader>pv","<cmd>Ex<CR>")
