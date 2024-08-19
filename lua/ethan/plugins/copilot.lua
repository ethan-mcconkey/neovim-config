return {
    'github/copilot.vim',
    event = { 'BufReadPre', 'BufNewFile' },
    init = function()
        vim.g.copilot_no_tab_map = true
        vim.keymap.set(
            'i',
            '<M-c>',
            'copilot#Accept("\\<CR>")',
            { expr = true, replace_keycodes = false }
        )
        vim.keymap.set('i', '<C-e>', '<Plug>(copilot-dismiss)')
    end,
}
