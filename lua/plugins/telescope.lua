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
            require("telescope").setup({
                defaults = {
                    mappings = {
                        i = {
                            ["<C-k>"] = require("telescope.actions").move_selection_previous,
                            ["<C-j>"] = require("telescope.actions").move_selection_next,
                            ["<C-l>"] = require("telescope.actions").select_default,
                        },
                    },
                },
                pickers = {
                    find_files = {
                        file_ignore_patterns = { "node_modules", ".git", ".venv", "__pycache__" },
                        hidden = true,
                    },
                },
            })

            -- See `:help telescope.builtin`
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>sf", builtin.find_files, {})
            vim.keymap.set("n", "<C-p>", builtin.git_files, {})
            vim.keymap.set("n", "<leader>sg", builtin.live_grep, {}) -- Requires ripgrep
            vim.keymap.set("n", "<leader>sb", builtin.buffers, {})
        end,
    },
}
