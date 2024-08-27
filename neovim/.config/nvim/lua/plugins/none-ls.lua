return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.completion.spell,
        require("none-ls.diagnostics.eslint"),
        -- lua
        null_ls.builtins.formatting.stylua,
        -- ruby
        null_ls.builtins.diagnostics.rubocop,
        null_ls.builtins.formatting.rubocop,
        -- prettier
        null_ls.builtins.formatting.prettierd,
        -- biome (web)
        -- null_ls.builtins.diagnostics.biome,
        -- null_ls.builtins.formatting.biome,
        -- null_ls.builtins.completion.spell,
        -- require("none-ls.diagnostics.eslint"),
        -- requires none-ls-extras.nvim
      },
    })
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
