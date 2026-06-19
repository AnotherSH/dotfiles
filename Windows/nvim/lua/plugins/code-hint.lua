-- 禁用代码提示
return {
  {
    "saghen/blink.cmp",
    enabled = true,
  },
  {
    "folke/noice.nvim",
    opts = {
      -- 关键：禁用 LSP 签名帮助的增强显示
      lsp = {
        signature = {
          enabled = true, -- 设为 false 即可关闭签名弹窗
        },
        -- 如果你还想保留其他 LSP 相关功能（如 hover、diagnostics），可以保留它们
        -- hover = { enabled = true },
        -- message = { enabled = true },
      },
      -- 你也可以完全禁用 noice 的 LSP 相关功能（更激进）
      -- presets = {
      --   lsp_doc_border = false,  -- 禁用 LSP 文档边框
      -- },
    },
  },
}
