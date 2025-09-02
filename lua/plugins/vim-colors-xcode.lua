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
  }
}
