return {
	{
		"catppuccin/nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			require("catppuccin").setup({
				flavour = "macchiato", -- You can choose any flavour you prefer: latte, frappe, macchiato, mocha
				transparent_background = true,
				custom_highlights = function(colors)
					return {
						Comment = { fg = "#62846a" },
						Function = { fg = colors.mauve },
						TabLineSel = { bg = colors.pink },
						Keyword = { fg = colors.flamingo },
						Macro = { fg = "#8600ff" },
						Character = { fg = "#c8e4d8" },
						Conditional = { fg = "#f97583" },
						Include = { fg = "#f97583" },
						Define = { fg = "#f97583" },
						Structure = { fg = "#6a5acd" },
						Typedef = { fg = "#8993d3" },
						Identifier = { fg = "#788ee0" },
						Type = { fg = "#a5a5fa" },
						Constant = { fg = "#788ee0" },
					}
				end,
			})
			-- load the colorscheme here
			vim.cmd([[colorscheme catppuccin]])
		end,
	},
}
