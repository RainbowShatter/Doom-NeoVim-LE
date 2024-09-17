return {
  {
    "gorbit99/codewindow.nvim",
    config = function()
      local codewindow = require("codewindow")
      codewindow.setup({
        active_in_terminals = false,                                                     -- Whether to show the codewindow in terminal buffers
        auto_enable = true,                                                              -- If true, automatically open the codewindow
        exclude_filetypes = { "help" },                                                  -- Code window will not be opened on these filetypes
        max_minimap_height = nil,                                                        -- Default height of the minimap
        max_lines = nil,                                                                 -- Default number of lines to show in the code window
        minimap_width = 13,                                                              -- How large you want the minimap to be
        use_lsp = true,                                                                  -- If true, codewindow will use the builtin LSP
        use_treesitter = true,                                                           -- If true, codewindow will use the treesitter parser
        use_git = true,                                                                  -- If true, codewindow will use git blame information
        width_multiplier = 4,                                                            -- If set to 0, the width of the code window will be the value of max_lines
        z_index = 1,                                                                     -- The z-index of the code window, set it to 1 by default
        show_cursor = false,                                                             -- Whether or not to show the cursor
        screen_bounds = "lines",                                                         -- Screen bounds to limit code window
        window_border = "none",                                                          -- Allow to draw a fancy border around the code window
        relative = "win",                                                                -- How the code window is positioned relative to the terminal
        events = { "TextChanged", "InsertLeave", "DiagnosticChanged", "FileWritePost" }, -- Events that update the code window
      })
      codewindow.apply_default_keybinds()
    end,
  },
  {
    "stevearc/dressing.nvim",
    lazy = true,
    config = function()
      require("dressing").setup({
        input = {
          win_options = {
            wrap = false,     -- Wrap the input in a floating window
          },
          title_pos = "left", -- Set the position of the title
          title = "Dressing", -- Custom title for the floating window
          winblend = 0,       -- Set the transparency of the floating window
        },
        completion = {
          win_options = {
            wrap = false, -- Wrap the completion in a floating window
          },
          winblend = 0,   -- Set the transparency of the floating window
        },
      })
    end,
  },
  {
    "j-hui/fidget.nvim",
    opts = {
      -- options
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        theme = "auto",
      })
    end,
  },
  {
    "rcarriga/nvim-notify",
    config = function()
      require("notify").setup({
        stages = "slide",
        background_colour = "FloatShadow",
        timeout = 1000,
      })
      vim.notify = require("notify")
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    priority = 998,
    config = function()
      require("nvim-tree").setup()

      -- Press Ctrl + n to toggle NvimTree
      vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", {})
    end,
  },
  {
    "stevearc/oil.nvim",
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
    config = function()
      require("oil").setup()
      vim.keymap.set("n", "-", require("oil").open, { desc = "Open parent directory" })
    end,
  },
  {
    "nanozuki/tabby.nvim",
    -- event = 'VimEnter', -- if you want lazy load, see below
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      vim.o.showtabline = 2
    end,
  },
  {
    "folke/trouble.nvim",
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
  },
  {
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
  },
}
