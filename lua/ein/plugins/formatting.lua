return {
	"stevearc/conform.nvim",
	lazy = false,
	keys = {
		{
			"<leader>f",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			mode = "",
			desc = "[F]ormat buffer",
		},
	},
	opts = {
		notify_on_error = true,
		format_on_save = function(bufnr)
			-- Disable "format_on_save lsp_fallback" for languages that don't
			-- have a well standardized coding style. You can add additional
			-- languages here or re-enable it for the disabled ones.
			local disable_filetypes = { c = true, cpp = true }
			return {
				timeout_ms = 500,
				lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
			}
		end,
		formatters_by_ft = {
			lua = { "stylua" },
			sh = { "shfmt" },
			html = { "djlint" },
			go = { "gofmt", "goimports" },
			cpp = { "clang_format" },
			-- Conform can also run multiple formatters sequentially
			-- python = { "isort", "black" },
			--
			-- You can use a sub-list to tell conform to run *until* a formatter
			-- is found.
			-- javascript = { { "prettierd", "prettier" } },
		},
		formatters = {
			clang_format = {
				args = function()
					-- Fetch indentation settings dynamically
					local shiftwidth = vim.api.nvim_get_option("shiftwidth")
					local expandtab = vim.api.nvim_get_option("expandtab")

					-- Build args based on Vim settings
					local args = { "--style={BasedOnStyle: llvm, " }

					-- Add indent width based on shiftwidth
					table.insert(args, "IndentWidth: " .. shiftwidth)

					-- Use spaces or tabs based on expandtab setting
					if expandtab then
						-- If using spaces
						table.insert(args, "TabWidth: " .. shiftwidth)
						table.insert(args, "UseTabs: Never") -- Use spaces instead of tabs
					else
						-- If using tabs
						table.insert(args, "TabWidth: " .. shiftwidth)
						table.insert(args, "UseTabs: Always") -- Use tabs instead of spaces
					end

					-- Ensure brace wrapping settings
					table.insert(
						args,
						"BraceWrapping: {AfterFunction: true, AfterControlStatement: true, BeforeElse: true, BeforeCatch: true }"
					)

					table.insert(args, " }")
					return args
				end,
			},
			shfmt = {
				prepend_args = { "-i", "4" },
			},
		},
	},
}
