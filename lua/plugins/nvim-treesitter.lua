return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = 'main',
    build = ':TSUpdate',

    -- Hardcoding installed parsers

    --[[ config = function()
      require'nvim-treesitter'.install {
        'python',
        'lua'
      }
      end,
    ]]--
  }
}

