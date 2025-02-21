return {
	"numToStr/Comment.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
	config = function()
		-- import comment plugin safely
		local comment = require("Comment")

		local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")

		-- enable comment
		comment.setup({
			-- for commenting tsx, jsx, svelte, html files
			pre_hook = ts_context_commentstring.create_pre_hook(),

			-- Required fields (add them if missing):
			padding = true, -- Add padding around comments
			sticky = true, -- Keep comments sticky
			ignore = "none", -- Ignore specific file types (nil means no files are ignored)

			-- Key mappings (optional)
			mappings = {
				basic = true, -- Enable basic mappings
				extra = false, -- Disable extra mappings (can be customized)
			},

			-- Comment toggler (e.g., key to toggle comment)
			toggler = {
				line = "gcc", -- Toggle comment for the current line
				block = "gbc", -- Toggle comment for the current block
			},

			-- Operator leader (optional, can be customized)
			opleader = {
				line = "gc", -- Comment a single line
				block = "gb", -- Comment a block
			},

			-- Extra options (optional)
			extra = {
				above = "gcO", -- Comment above the current line
				below = "gco", -- Comment below the current line
				eol = "eol",
			},

			-- Post hook (optional, for additional operations after commenting)
			post_hook = nil,
		})
	end,
}
