return {
	"goolord/alpha-nvim",
  priority = 999,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- Set header
		dashboard.section.header.val = {
				[[ @@@@@@@@@@@@@@ ============================================================================== @@@@@@@@@@@@@@ ]],
	      [[ @@@@@@@@@@@@@@ \\. . . . . . . \\   //. . . . . . .\\   // . . . . . . \\  \\ . . \\//. . .// @@@@@@@@@@@@@@ ]],
	      [[ @@@@@@@@@@@@@@ || . . _____ . . || ||. . ._____. . .|| || . . _____ . . || ||. . . \/. . . || @@@@@@@@@@@@@@ ]],
	      [[ @@@@@@@@@@@@@@ ||. . ||   || . .|| || . .||   ||. . || ||. . ||   || . .|| || . | . . . . .|| @@@@@@@@@@@@@@ ]],
	      [[ @@@@@@@@@@@@@@ || . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . || @@@@@@@@@@@@@@ ]],
	      [[ @@@@@@@@@@@@@@ ||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .|| @@@@@@@@@@@@@@ ]],
	      [[ @@@@@@@@@@@@@@ || . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . || @@@@@@@@@@@@@@ ]],
	      [[ @@@@@@@@@@@@@@ ||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.|| @@@@@@@@@@@@@@ ]],
	      [[ @@@@@@@@@@@@@@ ||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `|| @@@@@@@@@@@@@@ ]],
	      [[ @@@@@@@@@@@@@@ ||    `'         || ||         `'    || ||    `'         || ||   | \  / |   || @@@@@@@@@@@@@@ ]],
	      [[ @@@@@@@@@@@@@@ ||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   || @@@@@@@@@@@@@@ ]],
	      [[ @@@@@@@@@@@@@@ ||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   || @@@@@@@@@@@@@@ ]],
	      [[ @@@@@@@@@@@@@@ ||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   || @@@@@@@@@@@@@@ ]],
	      [[ @@@@@@@@@@@@@@ ||   .=='    _-'          '-__\._-'         '-_./__-'         `' |. /|  |   || @@@@@@@@@@@@@@ ]],
	      [[ @@@@@@@@@@@@@@ ||.=='    _-'   ___     ___    ___   __  __ /\_\    ___ ___       `' |  /==.|| @@@@@@@@@@@@@@ ]],
	      [[ @@@@@@@@@@@@@@ =='    _-'     / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\         \/   `== @@@@@@@@@@@@@@ ]],
	      [[ @@@@@@@@@@@@@@ \   _-'       /\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \         `-_   / @@@@@@@@@@@@@@ ]],
	      [[ @@@@@@@@@@@@@@  `''          \ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\           ``'  @@@@@@@@@@@@@@ ]],
        [[ @@@@@@@@@@@@@@ VER: 1.0    -  \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/  - Charityware @@@@@@@@@@@@@@ ]],
        [[ @@@@@@@@@@@@@@ ============================================================================== @@@@@@@@@@@@@@ ]],
      }

		-- Set menu
		dashboard.section.buttons.val = {
			dashboard.button("L", "  Last session            ", ":lua require('persistence').load()<CR>"),
			dashboard.button("R", "  Recent Files            ", ":Telescope oldfiles<CR>"),
      dashboard.button("C", "  Check NeoVim's Health   ", ":checkhealth<CR>"),
      dashboard.button("T", "  Tutor for NeoVim        ", ":Tutor<CR>"),
      dashboard.button("S", "󰎕  See Changes in Neovim   ", ":help news<CR>"),
      dashboard.button("H", "  Help Children in Uganda ", ":help iccf<CR>"),
      dashboard.button("Q", "  Quit NeoVim             ", ":q!<CR>"),
    }

		-- Set footer
		--   NOTE: This is currently a feature in my fork of alpha-nvim (opened PR #21, will update snippet if added to main)
		--   To see test this yourself, add the function as a dependecy in packer and uncomment the footer lines
		--   ```init.lua
		--   return require('packer').startup(function()
		--       use 'wbthomason/packer.nvim'
		--       use {
		--           'goolord/alpha-nvim', branch = 'feature/startify-fortune',
		--           requires = {'BlakeJC94/alpha-nvim-fortune'},
		--           config = function() require("config.alpha") end
		--       }
		--   end)
		--   ```
		-- local fortune = require("alpha.fortune")
		-- dashboard.section.footer.val = fortune()

		-- Send config to alpha
		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		-- vim.cmd([[
    -- autocmd FileType alpha setlocal nofoldenable
-- ]])
	end,
}
