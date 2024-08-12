require("mason").setup()
local mason_lspconfig = require("mason-lspconfig")
-- server configs, if {} is passed, default config is used
local servers = {
	lua_ls = {},
	ruff_lsp = {},
	pyright = {},
	rust_analyzer = {},
	jsonls = {},
	tsserver = {},
	clangd = {
		capabilities = capabilities,
		on_attach = on_attach,
		cmd = {
			"clangd",
			"--offset-encoding=utf-16",
		},
	},
}
-- mason_lspconfig.setup({
-- 	ensure_installed = vim.tbl_keys(servers),
-- })
if not table.unpack then
	table.unpack = unpack
end
mason_lspconfig.setup_handlers({
	function(server_name)
		local server_config = {}
		if (not servers[server_name]) or servers[server_name] == {} then
			server_config = {
				capabilities = capabilities,
				on_attach = on_attach,
			}
		else
			server_config = servers[server_name]
		end
		require("lspconfig")[server_name].setup(server_config)
	end,
})

