vim.o.number = true				-- show line numbers
vim.cmd("colorscheme xcode")	-- set color scheme included with this config (Xcode Theme)
require('lualine').setup({		-- configuration for lualine
    options = { theme = 'nightfly' }
})
require("oil").setup()			-- configuration for oil.nvim
require("aerial").setup({
  -- optionally use on_attach to set keymaps when aerial has attached to a buffer
  on_attach = function(bufnr)
    -- Jump forwards/backwards with '{' and '}'
    vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
    vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
  end,
})
-- You probably also want to set a keymap to toggle aerial
vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")

-- Config for Kitty-Scrollback
require('kitty-scrollback').setup({
    myconfig = {
      kitty_get_text = {
        ansi = false,
      },
    }
})

-- Config for nvim-treesitter
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

