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
            "<leader>pf",
            function() require("telescope.builtin").find_files({ hidden=true }) end,
            desc = "Find File",
          },
          {
            "<leader>pb",
            require("telescope.builtin").buffers,
            desc = "Find File",
          },
          {
            "<leader>ps",
            function() require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") }) end,
            desc = "Find Grep",
          },
          {
            "<leader>pws",
            function()
              local word = vim.fn.expand("<cword>")
              require("telescope.builtin").grep_string({ search = word })
            end,
            desc = "Find Grep",
          },
          {
            "<leader>pWs",
            function()
              local word = vim.fn.expand("<cWORD>")
              require("telescope.builtin").grep_string({ search = word })
            end,
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