return {
  -- vim-visual-multi
  {
    "mg979/vim-visual-multi",
  },

  -- oil.nvim
  {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      keymaps = {
        ["<C-s>"] = false, -- 取消 垂直分割打开文件快捷键
        ["<C-h>"] = false, -- 取消 水平分割打开文件快捷键
        ["<C-t>"] = false, -- 取消 新开标签页打开文件快捷键
        ["<C-l>"] = false, -- 取消 原本的刷新快捷键
        ["<C-r>"] = "actions.refresh", -- 设置 新的刷新快捷键
      },
      columns = {
        "icon", -- 文件类型图标
        "permissions", -- 文件权限 (如 -rw-r--r--)
        "size", -- 文件大小
        "birthtime", -- 文件创建时间 (birth time)
        -- "atime", -- 最后访问时间 (access time)
        "mtime", -- 最后修改时间 (modification time)
        -- "type", -- 条目类型
      },
    },
    -- Optional dependencies
    dependencies = { { "nvim-mini/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
  },
}
