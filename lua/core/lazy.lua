local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

vim.g.mapleader = " "

local plugins = {
	"nvim-treesitter/nvim-treesitter", build = ":TSUpdate",

	'dense-analysis/ale',
	'bstevary/betty-in-vim',

	'nvim-tree/nvim-web-devicons',
	'alvarosevilla95/luatab.nvim',

	{ "catppuccin/nvim", name = "catppuccin" },

	{
		'nvim-telescope/telescope.nvim', version = '0.1.2',
		dependencies = { {'nvim-lua/plenary.nvim'} }
	},

	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true }
	},

	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		dependencies = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip'},     -- Required
		}
	},
}

local opts = {}

require("lazy").setup(plugins, opts)
