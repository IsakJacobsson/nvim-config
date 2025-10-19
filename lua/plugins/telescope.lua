return {
    { -- Fuzzy Finder (files, lsp, etc)
        "nvim-telescope/telescope.nvim",
        event = "VimEnter",
        dependencies = {
            "nvim-lua/plenary.nvim",
            -- Adds file icons in file list
            { "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
        },
        config = function()
            -- See `:help telescope` and `:help telescope.setup()`
            require("telescope").setup({})

            -- See `:help telescope.builtin`
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
            vim.keymap.set("n", "<C-p>", builtin.git_files, {})
            vim.keymap.set("n", "<leader>pg", builtin.live_grep, {}) -- Requires ripgrep
            vim.keymap.set("n", "<leader><leader>", builtin.buffers, {})
        end,
    },
}
