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
