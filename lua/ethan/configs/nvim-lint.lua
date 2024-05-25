local M = {}

M.setup = function()
    local lint = require('lint')

    lint.linters_by_ft = {
        lua = { 'luacheck' },
        python = { 'mypy' },
        css = { 'stylelint' },
        json = { 'biomejs' },
        dockerfile = { 'hadolint' },
        yaml = { 'yamllint' },
    }

    local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })

    vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
        group = lint_augroup,
        callback = function()
            lint.try_lint()
        end,
    })
end

M.linters = {
    'luacheck',
    'mypy',
    'stylelint',
    'biome',
    'hadolint',
    'yamllint',
}

return M
