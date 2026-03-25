return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "astro",
      "lua_ls",
      "ruff",
      "vtsls",
    },
  },
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
  },
}
