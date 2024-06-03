return {
  {
    'ellisonleao/gruvbox.nvim',
    config = function()
      -- vim.o.background = 'dark'
      -- vim.cmd 'colorscheme gruvbox'
    end,
  },
  {
    'craftzdog/solarized-osaka.nvim',
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
      },
    },
  },
  {
    'zaldih/themery.nvim',
    config = function()
      -- Minimal config
      require('themery').setup {
        themes = { 'gruvbox', 'solarized', 'solarized-day' },
        themeConfigFile = '~/.config/nvim/lua/settings/theme.lua',
        livePreview = true,
      }
    end,
  },
}
