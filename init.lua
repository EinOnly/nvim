require("josean.core")
require("josean.lazy")

-- Make NvimTree background completely transparent
vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "NONE" }) -- Set background transparent for NvimTree
vim.api.nvim_set_hl(0, "NvimTreeVertSplit", { bg = "NONE" }) -- Make the split line background transparent
vim.api.nvim_set_hl(0, "NvimTreeFileIcon", { bg = "NONE" }) -- Transparent background for file icons
vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { bg = "NONE" }) -- Transparent background for folder icons
vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "NONE" }) -- Transparent background for unfocused NvimTree
vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { bg = "NONE" }) -- Lighter separator
vim.api.nvim_set_hl(0, "NvimTreeStatusLine", { bg = "NONE" }) -- Lighter status line

-- nvim-treesitter fold
vim.wo.foldmethod = "expr"
vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
vim.wo.foldlevel = 0
vim.cmd([[highlight Folded guibg=NONE guifg=fg]])

-- Auto activate python env
local env_dirs = { ".venv", "env", "venv" }
local found_env = false
local cur_env = ""

for _, dir in ipairs(env_dirs) do
	local env_path = vim.fn.getcwd() .. "/" .. dir .. "/bin/python"
	if vim.fn.executable(env_path) == 1 then
		vim.g.python3_host_prog = env_path
		found_env = true
		cur_env = env_path
		break
	end
end

if not found_env then
	print("No virtual environment found (checked .venv, env, venv)")
else
	print("Current python env:", cur_env)
end
