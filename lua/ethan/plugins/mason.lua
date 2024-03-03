return {
	'williamboman/mason.nvim',
	dependencies = {
		'WhoIsSethDaniel/mason-tool-installer.nvim',
	},
	config = function()
		require('mason').setup()
		require('mason-tool-installer').setup({
			ensure_installed = {
				'stylua',
				'black',
				'isort',
			},
		})
	end,
}
