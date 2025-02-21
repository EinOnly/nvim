return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"svelte",
				"lua_ls",
				"pyright", -- Python
				-- "typescript-language-server", -- JavaScript/TypeScript
				"clangd", -- C/C++
				"gopls", -- Go
			},
			automatic_installation = true,
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"svelte", -- Svelte
				"lua_ls", -- Lua LSP
				"pyright", -- Python LSP
				-- "typescript-language-server", -- JavaScript/TypeScript LSP
				"clangd", -- C/C++ LSP
				"gopls", -- Go LSP
			},
		})
	end,
}
