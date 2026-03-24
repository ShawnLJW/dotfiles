return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "astro",
      "lua_ls",
      "prettierd",
      "ruff",
      "vtsls",
    },
  },
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
  },
}
