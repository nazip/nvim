return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.goimports,
        null_ls.builtins.formatting.gofumpt,
   --     null_ls.builtins.diagnostics.golangci-lint,
        null_ls.builtins.code_actions.gomodifytags,
        null_ls.builtins.code_actions.impl,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
