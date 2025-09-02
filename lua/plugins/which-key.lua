return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
  config = function()
    local wk = require("which-key")
    
    wk.add({
      { "<leader>f", group = "file" }, -- group
      { "<leader>ff", "<cmd>Files<cr>", desc = "Find File", mode = "n" }, -- changed to match your fzf setup
      { "<leader>fg", "<cmd>Rg<cr>", desc = "Live Grep", mode = "n" }, -- added for your fzf setup
      { "<leader>fb", "<cmd>Buffers<cr>", desc = "Find Buffers", mode = "n" }, -- changed to match your fzf setup
      { "<leader>fn", desc = "New File" },
      
      { "<leader>w", proxy = "<c-w>", group = "windows" }, -- proxy to window mappings
      
      { "<leader>b", group = "buffers", expand = function()
          return require("which-key.extras").expand.buf()
        end
      },
      
      {
        -- Nested mappings for multiple modes
        mode = { "n", "v" }, -- NORMAL and VISUAL mode
        { "<leader>q", "<cmd>q<cr>", desc = "Quit" },
        -- Note: removed the conflicting <leader>w mapping since it's already defined above as a proxy
      },


      { "<leader>o", "<cmd>Oil<cr>", desc = "Open Oil" },
      { "<leader>O", function() require("oil").toggle_float() end, desc = "Oil (floating)" },
      { "-", "<cmd>Oil<cr>", desc = "Open parent directory" },
    })
  end,
}
