return {
	"vimwiki/vimwiki",
	lazy = false,
	init = function ()
		vim.g.vimwiki_list = {
			{
				path = '~/vimwiki',
				syntax = 'markdown',
				ext = '.md',
			},
		}
		vim.g.vimwiki_ext2syntax = {
			['.md'] = 'markdown',
			['.markdown'] = 'markdown',
			['.mdown'] = 'markdown',
		}
		vim.g.vimwiki_hl_headers = 1
	end,
	enabled = false,
}
