return {
	{
		"nvim-tree/nvim-web-devicons"
	},
	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		config = true
	},
	{
		"folke/zen-mode.nvim",
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		}
	},
	{
		"ThePrimeagen/refactoring.nvim",
		dependencies = {
			{ "nvim-lua/plenary.nvim" },
			{ "nvim-treesitter/nvim-treesitter" },
		},
		keys = {
			{
				"<leader>rr",
				function()
					require("telescope").extensions.refactoring.refactors()
				end,
				mode = { "n", "v" },
				desc = "Refactoring menu",
			},
		},
		config = function()
			require("refactoring").setup {}
			require("telescope").load_extension "refactoring"
		end,
	},
}
