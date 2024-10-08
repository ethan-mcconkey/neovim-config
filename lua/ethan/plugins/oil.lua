return {
    'stevearc/oil.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', 'echasnovski/mini.nvim' },
    event = 'VimEnter',
    config = function()
        require('oil').setup({
            default_file_explorer = true,
            columns = {
                'icon',
            },
            delete_to_trash = true,
            skip_confirm_for_simple_edits = true,
            view_options = {
                show_hidden = true,
                is_always_hidden = function(name, _)
                    return vim.tbl_contains({ '.git', '.trash', '.venv' }, name)
                        or string.find(name, 'cache')
                end,
                sort = {
                    { 'type', 'asc' },
                    { 'name', 'asc' },
                },
            },
            use_default_keymaps = false,
            keymaps = {
                ['<CR>'] = 'actions.select',
            },
        })

        -- KEYMAPS
        vim.keymap.set('n', '-', '<cmd>Oil<CR>', { desc = 'Open File Explorer' })
    end,
}
