return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { 'nvim-lua/plenary.nvim' },
        keys = {
          -- add a keymap to browse plugin files
          -- stylua: ignore
          {
            "<leader>pf",
            require("telescope.builtin").find_files,
            desc = "Find File",
          },
          {
            "<C-p>",
            require("telescope.builtin").git_files,
            desc = "Find Git File",
          },
          {
            "<leader>ps",
            function() require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") }) end,
            desc = "Find Grep",
          },
          {
            "<leader>vh",
            require("telescope.builtin").help_tags,
            desc = "Find Grep",
          },
        },
      },
}