local nnoremap = require("maverick.keymap").nnoremap	
local noremap = require("maverick.keymap").noremap	

-- Moving between Splits
nnoremap("<C-h>","<C-w>h")
nnoremap("<C-j>","<C-w>j")
nnoremap("<C-k>","<C-w>k")
nnoremap("<C-l>","<C-w>l")

-- Closing and saving
nnoremap("<C-q>","<cmd>q<CR>")

nnoremap("<S-l>","$")
nnoremap("<S-h>","0")

nnoremap("<C-s>","<cmd>vsplit<CR>")

nnoremap("<leader>pv","<cmd>Ex<CR>")
