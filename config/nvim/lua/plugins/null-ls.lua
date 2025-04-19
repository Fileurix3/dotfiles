return {
  'jose-elias-alvarez/null-ls.nvim',
  config = function()
    local null_ls = require("null-ls")

    -- Настройка форматирования с Prettier
    null_ls.setup({
      sources = {
        -- Используем Prettier для форматирования
        null_ls.builtins.formatting.prettier,
      },
    })

    -- Автоматическое форматирование при сохранении файла
    vim.cmd [[
      augroup LspFormatting
        autocmd! * <buffer>
        autocmd BufWritePre * lua vim.lsp.buf.format({ async = true })
      augroup END
    ]]
  end
}
