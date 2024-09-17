return {

  -- Default Plugins
  {
    "2kabhishek/nerdy.nvim",
    dependencies = {
      "stevearc/dressing.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },
  {
    "mrcjkb/rustaceanvim",
    version = "^5", -- Recommended
    lazy = false, -- This plugin is already lazy
    vim.keymap.set("n", "<leader>cr", "<cmd>RustOpenCargo<cr>", { desc = "Open Cargo.toml" }),
  },
  {
    "potamides/pantran.nvim",
    config = function()
      require("pantran").setup({
        default_engine = "google",
        vim.keymap.set("n", "<leader>pt", "<cmd>Pantran<cr>", { desc = "Pantran" }),
      })
    end,
  },
  {
    {
      "nvim-telescope/telescope.nvim",
      branch = "0.1.x",
      dependencies = {
        {
          "nvim-lua/plenary.nvim",
          "tsakirist/telescope-lazy.nvim",
          "polirritmico/telescope-lazy-plugins.nvim",
          "debugloop/telescope-undo.nvim",
          "andrew-george/telescope-themes",
        },
      },
      config = function()
        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<C-p>",      builtin.find_files, { desc = "Find files" })
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
        vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Buffers" })
        vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help tags" })
        vim.keymap.set("n", "<leader>fc", builtin.commands, { desc = "Commands" })
        vim.keymap.set("n", "<leader>fs", builtin.git_status, { desc = "Git status" })
        vim.keymap.set("n", "<leader>fm", builtin.man_pages, { desc = "Man pages" })
        vim.keymap.set("n", "<leader>fu", "<cmd>Telescope undo", { desc = "Undo history" })
        vim.keymap.set("n", "<leader>fn", "<cmd>Telescope notify<cr>", { desc = "Notifications" })
        vim.keymap.set("n", "<leader>ft", "<cmd>Telescope themes<cr>", { desc = "Themes" })
      end,
    },
    {
      "nvim-telescope/telescope-ui-select.nvim",
      priority = 995,
      config = function()
        require("telescope").setup({
          extensions = {
            ["ui-select"] = {
              require("telescope.themes").get_dropdown({}),
            },
          },
        })
        require("telescope").load_extension("lazy_plugins")
        require("telescope").load_extension("lazy")
        require("telescope").load_extension("ui-select")
        require("telescope").load_extension("undo")
        require("telescope").load_extension("notify")
        require("telescope").load_extension("themes")
      end,
    },
  },
  {
    "ray-x/web-tools.nvim",
    config = function()
      require("web-tools").setup({
        keymaps = {
          rename = nil,   -- by default use same setup of lspconfig
          repeat_rename = ".", -- . to repeat
        },
        hurl = {          -- hurl default
          show_headers = true, -- do not show http headers
          floating = false, -- use floating windows (need guihua.lua)
          json5 = true,   -- use json5 parser require json5 treesitter
          formatters = {  -- format the result by filetype
            json = { "jq" },
            html = { "prettier", "--parser", "html" },
          },
        },
      })
    end,
  },

  -- Your plugins here
  {},
}
