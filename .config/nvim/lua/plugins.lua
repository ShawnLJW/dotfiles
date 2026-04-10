local gh = function(x) return 'https://github.com/' .. x end

vim.pack.add({
  gh("ibhagwan/fzf-lua"),
  gh("stevearc/oil.nvim"),
  gh("nvim-tree/nvim-web-devicons"),
  gh("neovim/nvim-lspconfig"),
  gh("mason-org/mason.nvim"),
  gh("mason-org/mason-lspconfig.nvim"),
  { src = gh("saghen/blink.cmp"), version = vim.version.range("^1") },
  gh("rafamadriz/friendly-snippets"),
  gh("folke/lazydev.nvim"),
  gh("stevearc/conform.nvim"),
  gh("nvim-treesitter/nvim-treesitter"),
})

require("nvim-treesitter").setup({
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
  auto_install = true,
  highlight = { enable = true },
})

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "astro",
    "lua_ls",
    "ruff",
    "vtsls",
  },
})

require("lazydev").setup({
  library = {
    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
  },
})

require("blink.cmp").setup({
  keymap = { preset = "default" },
  appearance = {
    nerd_font_variant = "mono",
  },
  completion = { documentation = { auto_show = false } },
  sources = {
    default = { "lazydev", "lsp", "path", "snippets", "buffer" },
    providers = {
      lazydev = {
        name = "LazyDev",
        module = "lazydev.integrations.blink",
        score_offset = 100,
      },
    },
  },
  fuzzy = { implementation = "prefer_rust_with_warning" },
})

require("conform").setup({
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
})

require("oil").setup()
