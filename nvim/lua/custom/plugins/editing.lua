return {
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
  },
  {
    'folke/zen-mode.nvim',
    config = function()
      vim.keymap.set('n', '<leader>zm', ':ZenMode<CR>', { silent = true, desc = 'Activar ZenMode' })
    end,
  },
  {
    'ThePrimeagen/refactoring.nvim',
    dependencies = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-treesitter/nvim-treesitter' },
    },
    keys = {
      {
        '<leader>rr',
        function()
          require('telescope').extensions.refactoring.refactors()
        end,
        mode = { 'n', 'v' },
        desc = 'Refactoring menu',
      },
    },
    config = function()
      require('refactoring').setup {}
      require('telescope').load_extension 'refactoring'
    end,
  },
  {
    'github/copilot.vim',
    enabled = true,
  },
}
