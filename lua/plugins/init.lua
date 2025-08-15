return {
  -- Theme
  {
    "arzg/vim-colors-xcode",
    lazy = false,
    priority = 1000,
    init = function()
      -- This runs immediately when the plugin spec is processed
      vim.cmd.colorscheme("xcodedarkhc")
    end,
  },

  -- Start screen
  { "mhinz/vim-startify" },

  -- Surroundings manipulation
  { "tpope/vim-surround" },

  -- File manager (Oil)
  { "stevearc/oil.nvim" },

  -- Outline viewer
  { "stevearc/aerial.nvim" },

  -- File tree
  { "nvim-neo-tree/neo-tree.nvim", dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons"
  }},

  -- Status line
  { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },

  -- GitHub Copilot
  { "github/copilot.vim" },

  -- Kitty terminal scrollback integration
  { "mikesmithgh/kitty-scrollback.nvim" },

  -- Treesitter for syntax highlighting
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- (Example) LSP support (uncomment if you used them)
  -- { "neovim/nvim-lspconfig" },

  -- Add more here if needed...
}

