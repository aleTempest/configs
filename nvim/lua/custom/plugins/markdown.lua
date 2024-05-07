return {
  'preservim/vim-markdown',
  enabled = false, -- sobre escribe la configuración de obsidian
  config = function()
    vim.g.vim_markdown_folding_disabled = 1
  end,
}
