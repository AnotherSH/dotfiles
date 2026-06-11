return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        omnisharp = { enabled = false }, -- 禁用 OmniSharp
      },
    },
  },
}
