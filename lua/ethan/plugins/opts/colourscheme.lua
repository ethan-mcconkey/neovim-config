return {
    flavour = 'mocha',
    background = {
        light = 'mocha',
        dark = 'mocha',
    },
    transparent_background = true,
    show_end_of_buffer = true,
    term_colors = true,
    integrations = {
        markdown = true,
        fidget = true,
        cmp = true,
        treesitter = true,
        treesitter_context = true,
        harpoon = true,
        indent_blankline = {
            enabled = true,
            scope_color = 'text',
            colored_indent_levels = false,
        },
        mason = true,
        mini = {
            enabled = true,
            indendscope_color = 'text',
        },
        noice = true,
        dap = true,
        dap_ui = true,
        native_lsp = {
            enabled = true,
            underlines = {
                errors = { 'undercurl' },
                hints = { 'undercurl' },
                warnings = { 'undercurl' },
                information = { 'undercurl' },
            },
            inlay_hints = {
                background = true,
            },
        },
        notify = true,
        telescope = true,
        which_key = true,
        lsp_trouble = true,
        gitsigns = true,
        flash = true,
    },
}