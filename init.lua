require("ein.core")
require("ein.lazy")

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
local cur_env = ""

-- Get the current working directory
local cwd = vim.fn.getcwd()

-- Recursively search for Python virtual environments in subdirectories
local function find_python_env(path)
	for _, entry in ipairs(vim.fn.readdir(path)) do
		local entry_path = path .. "/" .. entry
		if vim.fn.isdirectory(entry_path) == 1 then -- If it's a directory
			-- Check if the directory contains bin/python
			if vim.fn.executable(entry_path .. "/bin/python") == 1 then
				return entry_path .. "/bin/python"
			end
			-- Recursively search subdirectories
			local result = find_python_env(entry_path)
			if result then
				return result
			end
		end
	end
	return ""
end

-- Try to find a Python environment
cur_env = find_python_env(cwd)

-- If found, set the environment and notify
if cur_env ~= "" then
	vim.g.python3_host_prog = cur_env

	-- Optionally, set environment variables for Python
	vim.fn.setenv("VIRTUAL_ENV", cur_env) -- Set the VIRTUAL_ENV variable
	vim.fn.setenv("PATH", cur_env .. "/bin:" .. vim.fn.getenv("PATH")) -- Add virtual env bin to PATH
	vim.fn.setenv("PYTHONHOME", "") -- Ensure the system Python isn't being used

	-- Set the PYTHONPATH so that Python can find the packages in the virtual environment
	local site_packages = cur_env
		.. "/lib/python"
		.. vim.fn.matchstr(vim.fn.system("python3 -c 'import sys; print(sys.version_info.major)'"), "\\d+")
		.. "/site-packages"
	vim.fn.setenv("PYTHONPATH", site_packages)

	vim.notify("Current python env: " .. cur_env, vim.log.levels.INFO)
else
	vim.notify("No virtual environment found", vim.log.levels.INFO)
end
