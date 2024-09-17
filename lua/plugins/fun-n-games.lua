return {
  {
    "Eandrju/cellular-automaton.nvim",
    -- Make your code melt using this plugin!
    config = function()
      vim.keymap.set("n", "<C-f>r", "<cmd>CellularAutomaton make_it_rain<CR>", { desc = "Make it rain!" })
      vim.keymap.set("n", "<C-f>l", "<cmd>CellularAutomaton game_of_life<CR>", { desc = "Game of life!" })
    end,
  },
  {
    "seandewar/nvimesweeper",
    event = "VeryLazy",
    config = function()
      vim.keymap.set("n", "<leader>gs", "<cmd>Nvimesweeper<cr>", { desc = "Nvim Sweeper" })
    end,
  },
  {
    "alec-gibson/nvim-tetris",
    -- Play Tetris in Neovim!
    event = "VeryLazy",
    config = function()
      vim.keymap.set("n", "<leader>gt", "<cmd>Tetris<cr>", { desc = "Nvim Tetris" })
    end,
  },
  {
    "ThePrimeagen/vim-be-good",
    -- Become the best programmer ever using vim-be-good
    -- And learn how to use vim in a fun and interactive way!
    keys = {
      { "<leader>gb", ":VimBeGood<CR>", desc = "VimBeGood" },
    },
  },
  {},
}
