return {
  { 'nyoom-engineering/oxocarbon.nvim' },
  { 'shaunsingh/nord.nvim' },
  {
    'nvim-lualine/lualine.nvim',

    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      options = {
        theme = 'auto',
      },
    },
  },
  { 'lukas-reineke/indent-blankline.nvim', main = 'ibl', opts = {} },
}
