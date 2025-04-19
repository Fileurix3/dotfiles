return  {
  "iamcco/markdown-preview.nvim",
  build = "cd app && npm install",
  ft = { "markdown" },
  config = function()
    vim.g.mkdp_auto_start = 0 -- не открывать сразу
    vim.g.mkdp_auto_close = 1 -- закрывать при выходе
    vim.g.mkdp_theme = "dark" -- можно поменять на "light"
  end
}

