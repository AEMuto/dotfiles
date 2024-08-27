return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = {
				"c",
				"lua",
				"vim",
				"vimdoc",
				"elixir",
				"javascript",
				"html",
				"css",
				"xml",
				"json",
				"typescript",
				"svelte",
				"styled",
				"rust",
				"python",
				"php",
				"markdown",
				"jq",
				"jsdoc",
				"dart",
				"dockerfile",
				"bash",
			},
      auto_install = true,
			-- sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
