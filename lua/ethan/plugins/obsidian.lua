return {
    'epwalsh/obsidian.nvim',
    event = {
        'BufReadPre ' .. vim.fn.expand('~') .. '/Documents/Obsidian Vault/**.md',
        'BufNewFile ' .. vim.fn.expand('~') .. '/Documents/Obsidian Vault/**.md',
    },
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    opts = {
        disable_frontmatter = true,
        workspaces = {
            {
                name = 'Personal',
                path = vim.fn.expand('~') .. '/Documents/Obsidian Vault',
                strict = true,
            },
        },
        completion = {
            nvim_cmp = true,
            min_chars = 2,
        },
        templates = {
            subdir = '99 - Meta/00 - Templates',
            date_format = '%d-$m-%Y',
            time_format = '%H:%M',
        },
        attachments = {
            img_folder = '99 - Meta/01 - Attachments',
            img_text_func = function(client, path)
                path = client:vault_relative_path(path) or path
                return string.format('![%s](%s)', path.name, path)
            end,
            confirm_img_paste = true,
        },
    },
}
