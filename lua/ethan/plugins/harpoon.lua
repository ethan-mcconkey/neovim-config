return {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    keys = {
        { '<leader>a' },
        { '<leader>e' },
        { '<leader>1' },
        { '<leader>2' },
        { '<leader>3' },
        { '<leader>4' },
        { '<M-p>' },
        { '<M-n>' },
    },
    config = function()
        local harpoon = require('harpoon')

        harpoon:setup()

        vim.keymap.set('n', '<leader>a', function()
            harpoon:list():add()
        end, { desc = 'Harpoon Append' })
        vim.keymap.set('n', '<leader>e', function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
        end, { desc = 'Harpoon Explorer' })
        vim.keymap.set('n', '<leader>1', function()
            harpoon:list():select(1)
        end, { desc = 'Harpoon Select Item One' })
        vim.keymap.set('n', '<leader>2', function()
            harpoon:list():select(2)
        end, { desc = 'Harpoon Select Item Two' })
        vim.keymap.set('n', '<leader>3', function()
            harpoon:list():select(3)
        end, { desc = 'Harpoon Select Item Three' })
        vim.keymap.set('n', '<leader>4', function()
            harpoon:list():select(4)
        end, { desc = 'Harpoon Select Item Four' })

        vim.keymap.set('n', '<M-p>', function()
            harpoon:list():prev()
        end, { desc = 'Harpoon Goto Previous Item' })
        vim.keymap.set('n', '<M-n>', function()
            harpoon:list():next()
        end, { desc = 'Harpoon Goto Next Item' })
    end,
}
