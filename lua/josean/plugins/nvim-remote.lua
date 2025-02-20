return {
	"mhinz/neovim-remote", -- Specify the neovim-remote plugin
	cmd = {
		"Remote", -- Command to open remote file
		"RemoteConfig", -- Command to configure remote connection
		"RemoteSync", -- Command to sync files with remote
		"RemoteUpload", -- Command to upload a file to the remote
		"RemoteDownload", -- Command to download a file from the remote
	},
	dependencies = {
		"nvim-lua/plenary.nvim", -- Optional dependency required for neovim-remote
	},
	keys = {
		{ "<leader>rf", "<cmd>Remote<cr>", desc = "Open remote file" }, -- Keybinding to open remote file
		{ "<leader>rs", "<cmd>RemoteSync<cr>", desc = "Sync files with remote" }, -- Keybinding to sync files with the remote server
	},
}
