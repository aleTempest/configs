return {
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
		},
		config = function ()
			vim.opt.conceallevel = 1
		end
	}
}
