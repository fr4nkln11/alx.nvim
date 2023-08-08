require("catppuccin").setup({
	flavour = "mocha",
	transparent_background = true,
	integrations = {
		cmp = true,
		treesitter = true,
		harpoon = true,
		telescope = {
			enabled = true,
			-- style = "nvchad"
		},
		native_lsp = {
			enabled = true,
			virtual_text = {
				errors = { "italic" },
				hints = { "italic" },
				warnings = { "italic" },
				information = { "italic" },
			},
			underlines = {
				errors = { "underline" },
				hints = { "underline" },
				warnings = { "underline" },
				information = { "underline" },
			},
			inlay_hints = {
				background = true,
			},
		},
		-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
	},
})

vim.cmd.colorscheme "catppuccin"
