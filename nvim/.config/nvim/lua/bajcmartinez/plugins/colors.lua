return {
    {
        "rose-pine/neovim",
        as = "rose-pine", 
        config = function()
            require("rose-pine").setup({
                styles = { italic = false, transparency = true },
            })

            vim.cmd("colorscheme rose-pine")
        end
    },
}