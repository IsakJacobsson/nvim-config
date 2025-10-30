return {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
    config = function()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "pyright",
                "bashls",
                "clangd",
            }
        })
        -- Disable argument placeholders when completing function
        vim.lsp.config("clangd", {
            cmd = { "clangd", "--function-arg-placeholders=false" }
        })
    end
}
