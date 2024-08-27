return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("catppuccin-macchiato")
		require("catppuccin").setup({
			integrations = {
				neotree = true,
				telescope = { enabled = true },
				treesitter = true,
			},
		})
	end,
}
