return {
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = false,
		opts = {
			hide_inactive_statusline = true,
		}
	},
	{
		"cocopon/iceberg.vim",
		lazy = true,
		enabled = false
	},
	{
		"Tsuzat/NeoSolarized.nvim",
		lazy = true,
	},
	{
		"neanias/everforest-nvim",
		lazy = false
	},
	{
		"Shatur/neovim-ayu",
		lazy = false,
		config = function ()
			require('ayu').setup({
				mirage = false,
			})
		end
	}
}

