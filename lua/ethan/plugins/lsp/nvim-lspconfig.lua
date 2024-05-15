return {
    'neovim/nvim-lspconfig',
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
        { 'folke/trouble.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' }, opts = {} },
        'hrsh7th/cmp-nvim-lsp',
        { 'j-hui/fidget.nvim', opts = require('ethan.configs.fidget').opts },
        { 'folke/neodev.nvim', opts = {} },
    },
    config = require('ethan.configs.nvim-lspconfig').setup,
}