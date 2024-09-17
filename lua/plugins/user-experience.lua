return {
  {
    "numToStr/Comment.nvim",
    -- Make better comments
    config = function()
      require("Comment").setup()
      -- The default keymaps are:
      -- 'gc' to comment visual regions/lines;
      -- 'gcc' to comment current line;
      -- 'gbc' to comment current block;
    end,
  },
  {
    "cvigilv/esqueleto.nvim",
    -- Default boilerplates for every file.
    opts = {},
    config = function()
      require("esqueleto").setup({
        -- This plugin is linked with the folder "skeletons" outside of the plugin folder.
        patterns = {
          "c",
          "css",
          "haskell",
          "html",
          "javascript",
          "json",
          "LICENSE",
          "lua",
          "README",
          "rust",
          "toml",
          "typescript",
        },
      })
    end,
  },
  {
    "ggandor/leap.nvim",
    -- Navigate in Vim with ease.
    config = function()
      local leap = require("leap")
      leap.add_default_mappings(
      -- The default keymaps are:
      -- 's' to Leap forward;
      )
      leap.opts.case_sensitive = true
    end,
  },
  {
    "chrisgrieser/nvim-spider",
    lazy = true,
    config = function()
      require("spider").setup()
    end,
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  },
  {
    -- nvim-unception
    -- a plugin that leverages neovim's built-in rpc functionality to simplify opening files from within neovim's
    -- terminal emulator without nesting sessions.
    "samjwill/nvim-unception",
    config = function()
      vim.g.unception_delete_replaced_buffer = true
    end,
  },
  {
    "Pocco81/true-zen.nvim",
    -- Finally you are ready to start your day with TrueZen.
    config = function()
      require("true-zen").setup({
        integrations = {
          twilight = true, -- enable twilight (ataraxis)
        },
      })
    end,
  },
  {
    "folke/twilight.nvim",
    -- View your code with minimal effort.
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
}
