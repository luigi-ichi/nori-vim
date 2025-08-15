local o = vim.opt
-- Common Neovim Settings
local theme = "xcodedarkhc" -- Default color scheme/theme upon Neovim startup
                            -- Change this string if you like a different one

-- [ EDITOR
o.mouse = "a" -- Mouse support
o.number = true		-- Line Numbers
o.cursorline = true -- Highlight the line where the cursor is
o.tabstop = 2			-- # of Spaces in a Tab Stop
o.shiftwidth = 2	-- # of Spaces in Auto Indents
o.expandtab = true	-- Convert tabs to spaces
o.smartindent = true -- Syntax-aware indentation for C-like langs
o.autoindent= true	-- Auto-indents inside a block relative to its indentati

-- [ SEARCHING
o.showmatch = true
-- o.mouse = "v"
o.hlsearch = true	-- Highlights all search matches
o.incsearch = true -- Show matches as you type the search pattern

-- [ MISCELLANEOUS
o.wildmode = { "longest", "list" }
o.clipboard = "unnamedplus" -- Yank/Delete/Put Operations => System Clipboard

-- Band-aid solution for the theme; I can't get around this problem yet >_<
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    pcall(vim.cmd.colorscheme, theme)
  end,
})
