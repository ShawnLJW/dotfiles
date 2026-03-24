return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      astro = { "prettierd" },
      css = { "prettierd" },
      html = { "prettierd" },
      javascript = { "prettierd" },
      javascriptreact = { "prettierd" },
      json = { "prettierd" },
      markdown = { "prettierd" },
      python = {
        "ruff_fix",
        "ruff_format",
        "ruff_organize_imports",
      },
      typescript = { "prettierd" },
      typescriptreact = { "prettierd" },
      yaml = { "prettierd" },
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_format = "fallback",
    },
  },
}
