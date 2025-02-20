-- markdown-preview.nvim plugin configuration
return {
	"iamcco/markdown-preview.nvim",
	run = "cd app && npm install", -- Install Node.js dependencies
	config = function()
		-- Automatically start Markdown preview when opening a Markdown file
		vim.g.mkdp_auto_start = 1
		-- Other configurable options, for example:
		-- vim.g.mkdp_port = '8080'  -- Set the port
		-- vim.g.mkdp_open_to_the_world = 1  -- Set whether to allow public access
	end,
}
