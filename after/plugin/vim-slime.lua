vim.g.slime_target = "tmux"
vim.g.slime_paste_file = "$HOME/.slime_paste"

local handle = io.popen("tmux list-panes -F '#{pane_id}' -t 'jl'")
local result = handle:read("*a")
handle:close()

vim.g.slime_default_config = {socket_name= "default", target_pane=result}
