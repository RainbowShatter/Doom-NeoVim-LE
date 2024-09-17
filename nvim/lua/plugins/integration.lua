return {
	{
		"lommix/godot.nvim",
		-- Use this plugin to manage Godot projects inside Neovim.
		lazy = true,
		config = function()
			require("godot")
		end,
	},
	{
		"pwntester/octo.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
			-- OR 'ibhagwan/fzf-lua',
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("octo").setup({
				user_icon = "",
				gh_cmd = "gh",
			})
		end,
	},
	{
		"epwalsh/obsidian.nvim",
		-- Use this plugin to manage Obsidian notes inside Neovim.
		version = "*", -- recommended, use latest release instead of latest commit
		lazy = true,
		ft = "markdown",
		dependencies = {
			-- Required.
			"nvim-lua/plenary.nvim",

			-- see below for full list of optional dependencies 👇
		},
		opts = {
			workspaces = {
				{
					name = "Studies",
					path = "~/Documentos/Obsidian/Studies",
				},
			},
		},
	},
	{
		"kelly-lin/ranger.nvim",
		-- Use this plugin to open files with Ranger inside Neovim.
		config = function()
			require("ranger-nvim").setup({ replace_netrw = true })
			vim.api.nvim_set_keymap("n", "<leader>ef", "", {
				noremap = true,
				callback = function()
					require("ranger-nvim").open(true)
				end,
			})
		end,
	},
	{
		{
			"sourcegraph/sg.nvim",
			-- Cody AI for Neovim.
			dependencies = { "nvim-telescope/telescope.nvim" },
			config = function()
				require("sg").setup({
					default_browser = "firefox",
				})
			end,
		},
	},
	{
		"azadkuh/vim-cmus",
		-- Use this plugin to play music with Cmus inside Neovim.
		cmd = "Cmus",
		init = function()
			vim.g.cmus_player = "cmus"
		end,
	},
	{
		"yuratomo/w3m.vim",
		-- Use this plugin to open URLs in w3m inside Neovim.
		event = "VeryLazy",
		config = function()
			vim.g.w3m_command = "w3m"
		end,
	},
}
