return{
	-- gruber-darker theme
	{
		"blazkowolf/gruber-darker.nvim"
	},

	-- doom-monokai-pro theme
	{
		"fdemb/doom-monokai-pro.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("doom-monokai-pro").setup({
			-- your config here
			})
			vim.cmd.colorscheme("doom-monokai-pro")
		end,
	},

	-- cyber theme
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,
	},

	-- cursor theme
	{
		"sphamba/smear-cursor.nvim",
		opts = {
			cursor_color = "#ffdd33",  -- blue: #00a2e8
		-- Faster smear
		--	stiffness = 0.8,                      -- 0.6      [0, 1]
		--	trailing_stiffness = 0.6,             -- 0.45     [0, 1]
		--	stiffness_insert_mode = 0.7,          -- 0.5      [0, 1]
		--	trailing_stiffness_insert_mode = 0.7, -- 0.5      [0, 1]
		--	damping = 0.95,                       -- 0.85     [0, 1]
		--	damping_insert_mode = 0.95,           -- 0.9      [0, 1]
		--	distance_stop_animating = 0.5,        -- 0.1      > 0
		},
	},

	-- vim-visual-multi
	{
		"mg979/vim-visual-multi",
	},

	-- nvim-treesitter
	{
		'nvim-treesitter/nvim-treesitter',
		lazy = false,
		build = ':TSUpdate'
	},

	-- nvim-web-devicons
	{ 
		"nvim-tree/nvim-web-devicons", 
		opts = {} 
	},

	-- oil.nvim
	{
		'stevearc/oil.nvim',
		---@module 'oil'
		---@type oil.SetupOpts
		opts = {},
		-- Optional dependencies
		dependencies = { { "nvim-mini/mini.icons", opts = {} } },
		-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
		-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
		lazy = false,
	},

	--  render-markdown
	{
		'MeanderingProgrammer/render-markdown.nvim',
		dependencies = { 
			--'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim'             -- if you use the mini.nvim suite
			--'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons'         -- if you use standalone mini plugins
			'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons'  -- if you prefer nvim-web-devicons
		},
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {},
	}
}
