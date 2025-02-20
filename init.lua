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

-- nvim-treesitter customer color
--
-- Comments and Documentation
vim.api.nvim_set_hl(0, "TSComment", { fg = "#62846a" }) -- Comment color                                                // #62846a
vim.api.nvim_set_hl(0, "TSLineComment", { fg = "#62846a" }) -- Line comment color                                           // #62846a
vim.api.nvim_set_hl(0, "TSBlockComment", { fg = "#62846a" }) -- Block comment color                                          // #62846a

-- Keywords and Preprocessors
vim.api.nvim_set_hl(0, "TSKeyword", { fg = "#ff6347" }) -- Keyword color                                                // #ff6347
vim.api.nvim_set_hl(0, "TSKeywordFunction", { fg = "#ff6347" }) -- Function keyword color (e.g., def, return)                   // #ff6347
vim.api.nvim_set_hl(0, "TSPreProc", { fg = "#930093" }) -- Preprocessor color (e.g., #define, #include)                 // #930093

-- Functions and Methods
vim.api.nvim_set_hl(0, "TSFunction", { fg = "#8600FF" }) -- Function name color                                          // #8600FF
vim.api.nvim_set_hl(0, "TSFunctionCall", { fg = "#8600FF" }) -- Function call color                                          // #8600FF
vim.api.nvim_set_hl(0, "TSMethod", { fg = "#7b3fd2" }) -- Method color                                                 // #7b3fd2

-- Variables and Constants
vim.api.nvim_set_hl(0, "TSVariable", { fg = "#a5a5fa" }) -- Variable color                                               // #a5a5fa
vim.api.nvim_set_hl(0, "TSVariableBuiltin", { fg = "#a5a5fa" }) -- Built-in variable color                                      // #a5a5fa
vim.api.nvim_set_hl(0, "TSConstant", { fg = "#788ee0" }) -- Constant color                                               // #788ee0
vim.api.nvim_set_hl(0, "TSConstantBuiltin", { fg = "#788ee0" }) -- Built-in constant color                                      // #788ee0
vim.api.nvim_set_hl(0, "TSLocal", { fg = "#a5a5fa" }) -- Local variable color                                         // #a5a5fa
vim.api.nvim_set_hl(0, "TSGlobal", { fg = "#8600FF" }) -- Global variable color                                        // #8600FF
vim.api.nvim_set_hl(0, "TSProperty", { fg = "#e4a848" }) -- Object property color                                        // #e4a848

-- Types and Classes
vim.api.nvim_set_hl(0, "TSType", { fg = "#ff4500" }) -- Type color (e.g., int, float)                                // #ff4500
vim.api.nvim_set_hl(0, "TSTypeBuiltin", { fg = "#ff4500" }) -- Built-in type color (e.g., list, dict)                       // #ff4500
vim.api.nvim_set_hl(0, "TSClass", { fg = "#1d1d1d" }) -- Class color                                                  // #1d1d1d
vim.api.nvim_set_hl(0, "TSClassMethod", { fg = "#7b3fd2" }) -- Class method color                                           // #7b3fd2

-- Strings and Numbers
vim.api.nvim_set_hl(0, "TSString", { fg = "#c8e4d8" }) -- String color                                                 // #c8e4d8
vim.api.nvim_set_hl(0, "TSStringRegex", { fg = "#c8e4d8" }) -- Regex string color                                           // #c8e4d8
vim.api.nvim_set_hl(0, "TSNumber", { fg = "#788ee0" }) -- Number color                                                 // #788ee0
vim.api.nvim_set_hl(0, "TSBoolean", { fg = "#32cd32" }) -- Boolean color (e.g., true, false)                            // #32cd32
vim.api.nvim_set_hl(0, "TSNull", { fg = "#000000" }) -- Null color (e.g., null, None)                                // #000000

-- Operators and Symbols
vim.api.nvim_set_hl(0, "TSOperator", { fg = "#6a5acd" }) -- Operator color (e.g., +, -, *, /)                            // #6a5acd
vim.api.nvim_set_hl(0, "TSPunctBracket", { fg = "#ff6347" }) -- Bracket color (e.g., (, ), {, })                             // #ff6347
vim.api.nvim_set_hl(0, "TSPunctDelimiter", { fg = "#ecda8d" }) -- Delimiter color (e.g., ;, ,)                                 // #ecda8d
vim.api.nvim_set_hl(0, "TSPunctSeparator", { fg = "#e8e6e6" }) -- Separator color (e.g., .)                                    // #e8e6e6
vim.api.nvim_set_hl(0, "TSTag", { fg = "#00ff00" }) -- Tag color (e.g., <div>, <span>)                              // #00ff00
vim.api.nvim_set_hl(0, "TSTagDelimiter", { fg = "#ff69b4" }) -- Tag delimiter color (e.g., <, >)                             // #ff69b4
vim.api.nvim_set_hl(0, "TSPunctSeparator", { fg = "#e8e6e6" }) -- Punctuation separator color                                  // #e8e6e6

-- Conditionals and Loops
vim.api.nvim_set_hl(0, "TSConditional", { fg = "#ffa500" }) -- Conditional statement color (e.g., if, else)                 // #ffa500
vim.api.nvim_set_hl(0, "TSLoop", { fg = "#32cd32" }) -- Loop statement color (e.g., for, while)                      // #32cd32

-- Namespaces and Modules
vim.api.nvim_set_hl(0, "TSNamespace", { fg = "#8993d3" }) -- Namespace color (e.g., namespace in C++)                     // #8993d3
vim.api.nvim_set_hl(0, "TSImport", { fg = "#8b4513" }) -- Import statement color (e.g., import, from)                  // #8b4513

-- HTML/XML and Web-related
vim.api.nvim_set_hl(0, "TSAttribute", { fg = "#8b4513" }) -- HTML/XML attribute color (e.g., class, id)                   // #8b4513
vim.api.nvim_set_hl(0, "TSInclude", { fg = "#ff69b4" }) -- Include directive color (e.g., #include in C/C++)            // #ff69b4

-- Identifiers and Declarations
vim.api.nvim_set_hl(0, "TSIdentifier", { fg = "#ff6347" }) -- Identifier color (e.g., variable, function names)            // #ff6347
vim.api.nvim_set_hl(0, "TSDeclare", { fg = "#ff6347" }) -- Declaration color (e.g., function or variable declarations)  // #ff6347
