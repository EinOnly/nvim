return {
	{
		"folke/tokyonight.nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			local bg = "NONE" --"#011628"

			require("tokyonight").setup({
				style = "night",
				on_colors = function(colors)
					colors.bg = bg
				end,
			})
			-- load the colorscheme here
			vim.cmd([[colorscheme tokyonight]])
		end,
	},
}
