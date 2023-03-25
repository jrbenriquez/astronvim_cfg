return {
  {
    "MunifTanjim/prettier.nvim",
    init = function()
    local prettier = require("prettier")

    prettier.setup({
      bin = 'prettierd', -- or `'prettierd'` (v0.23.3+)
      filetypes = {
        "css",
        "graphql",
        "html",
        "javascript",
        "javascriptreact",
        "json",
        "less",
        "markdown",
        "scss",
        "typescript",
        "typescriptreact",
        "yaml",
      },
      cli_options = {
        use_tabs = false,
      },
    })
    end,
  },
}
