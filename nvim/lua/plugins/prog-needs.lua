return {

  -- Commenting things
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

  -- Mason things
  {
    "williamboman/mason.nvim",
    priority = 989,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    priority = 988,
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "ts_ls", "biome" ,"ast_grep" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    priority = 987,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.ts_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.biome.setup({
        capabilities = capabilities,
      })
      lspconfig.ast_grep.setup({
        capabilities = capabilities,
      })
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },

  -- None Ls things
  {
    "nvimtools/none-ls.nvim",
    -- Format files with ease
    priority = 994,
    config = function()
      local null_ls = require("null-ls")

      null_ls.setup({
        sources = {

          -- None Ls formatting
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.formatting.prettier,

          -- None Ls diagnostics
        },
      })
      vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format file" })
    end,
  },

  -- Treesitter Things
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
}
