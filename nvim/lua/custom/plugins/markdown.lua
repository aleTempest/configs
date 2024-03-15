return {
	-- { "Furkanzmc/zettelkasten.nvim", enabled = false },
	-- { "ixru/nvim-markdown", enabled = false },
	{ "3rd/image.nvim" },
	{
		"epwalsh/obsidian.nvim",
		version = "*",
		lazy = true,
		ft = "markdown",
		opts = {
			workspaces = {
				{
					name = "home",
					path = "~/Desktop/cia"
				},
			}
		}
	}
}
