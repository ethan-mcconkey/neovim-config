local M = {}

M.setup = function()
    local lint = require('lint')

    lint.linters_by_ft = {
        lua = { 'luacheck' },
        python = { 'mypy' },
        css = { 'stylelint' },
        json = { 'biomejs' },
    }

    local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })

    vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
        group = lint_augroup,
        callback = function()
            lint.try_lint()
        end,
    })

    lint.linters.mypy.args = {
        '--python-executable',
        function()
            local path = os.getenv('VIRTUAL_ENV') or os.getenv('CONDA_PREFIX') or '/usr'
            return path .. '/bin/python3'
        end,
    }
end

M.linters = {
    'luacheck',
    'mypy',
    'stylelint',
    'biome',
}

return M
