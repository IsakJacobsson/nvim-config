return {
    "f-person/git-blame.nvim",
    event = "VeryLazy",
    config = function()
        -- get CursorLine background
        local cursor_bg = vim.api.nvim_get_hl_by_name("CursorLine", true).background
        local comment_fg = vim.api.nvim_get_hl_by_name("Comment", true).foreground

        -- define custom highlight group
        vim.api.nvim_set_hl(0, "MyGitBlame", {
            fg = comment_fg, -- match comment
            bg = cursor_bg, -- match current line
        })

        -- configure the plugin
        require("gitblame").setup({
            enabled = true,
            message_template = "    <summary> <date> <author>",
            date_format = "%m-%d-%Y",
            virtual_text_column = 1,
            ignored_filetypes = { "netrw" },
            highlight_group = "MyGitBlame",
            delay = 1000,
        })
    end,
}
