return{
	-- cyber theme
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,
	},

	-- gruber-darker theme
	{
		"blazkowolf/gruber-darker.nvim"
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
