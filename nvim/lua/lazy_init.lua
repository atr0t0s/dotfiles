vim.o.termguicolors = true
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	'rebelot/kanagawa.nvim',
	{ -- LSP Configuration & Plugins
		'neovim/nvim-lspconfig',
		dependencies = {
			-- Automatically install LSPs to stdpath for neovim
			'williamboman/mason.nvim',
			'williamboman/mason-lspconfig.nvim',
			-- Useful status updates for LSP
			'j-hui/fidget.nvim',
			-- Additional lua configuration, makes nvim stuff amazing
			'folke/neodev.nvim',
		}
	},
	{ -- Autocompletion
		'hrsh7th/nvim-cmp',
		dependencies = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
	},
	{ -- Highlight, edit, and navigate code
		'nvim-treesitter/nvim-treesitter',
		build = function()
			pcall(require('nvim-treesitter.install').update { with_sync = true })
		end,
	},
	{ -- Additional text objects via treesitter
		'nvim-treesitter/nvim-treesitter-textobjects',
		dependencies = { 'nvim-treesitter' },
	},
	'simrat39/symbols-outline.nvim',
	-- Git related plugins
	'tpope/vim-fugitive',
	'tpope/vim-rhubarb',
	'lewis6991/gitsigns.nvim',
	--use 'navarasu/onedark.nvim' -- Theme inspired by Atom
	'nvim-lualine/lualine.nvim', -- Fancier statusline
	'lukas-reineke/indent-blankline.nvim', -- Add indentation guides even on blank lrines
	'numToStr/Comment.nvim', -- "gc" to comment visual regions/lines
	--use 'tpope/vim-sleuth' -- Detect tabstop and shiftwidth automatically
	-- Fuzzy Finder (files, lsp, etc)
	{
		'nvim-telescope/telescope.nvim',
		branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	-- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
	{
		'nvim-telescope/telescope-fzf-native.nvim',
		build = 'make', 
		cond = vim.fn.executable 'make' == 1
	},
	{
		'kevinhwang91/nvim-ufo',
		dependencies = 'kevinhwang91/promise-async'
	},
	{
		'nvim-tree/nvim-tree.lua',
		dependencies = {
			'nvim-tree/nvim-web-devicons', -- optional, for file icons
		},
	},
	{
		'rcarriga/nvim-notify',
		config = function ()
			require("notify").setup {
				stages = 'fade_in_slide_out',
				background_colour = 'FloatShadow',
				timeout = 3000,
			}
			vim.notify = require('notify')
		end,
	},
	{
		"folke/noice.nvim",
		config = function()
			require("noice").setup({
				-- add any options here
			})
		end,
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			"rcarriga/nvim-notify",
		}
	},
	"numToStr/FTerm.nvim",
	'nvim-tree/nvim-web-devicons',
	--use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}
	{
		'akinsho/bufferline.nvim',
		dependencies = 'nvim-tree/nvim-web-devicons'
	},
	{
		'nvim-orgmode/orgmode', 
		config = function()
			require('orgmode').setup{}
		end
	},
	'akinsho/org-bullets.nvim',
	{
		'rmagatti/auto-session',
		config = function()
			require("auto-session").setup {
				log_level = "error",
				auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"},
			}
		end
	},
	{
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 400
			require('plugins.whichkey').setup()
		end
	},
	{
		"folke/twilight.nvim",
		config = function()
			require("twilight").setup {
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			}
		end
	},
	{
		"AckslD/nvim-neoclip.lua",
		dependencies = {
			-- you'll need at least one of these
			'nvim-telescope/telescope.nvim'
			-- {'ibhagwan/fzf-lua'},
		},
		config = function()
			require('neoclip').setup()
		end,
	},
	"luukvbaal/stabilize.nvim",
	{ "anuvyklack/windows.nvim",
		dependencies = {
			"anuvyklack/middleclass",
			"anuvyklack/animation.nvim"
		},
		config = function()
			vim.o.winwidth = 10
			vim.o.winminwidth = 10
			vim.o.equalalways = false
		end
	},
	{
		'sindrets/diffview.nvim',
		dependencies = 'nvim-lua/plenary.nvim'
	},
	{
		'ggandor/leap.nvim',
		config = function()
			require('leap').add_default_mappings()
		end,
	}
})
