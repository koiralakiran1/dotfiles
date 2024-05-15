-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
    {
        "NvChad/nvim-colorizer.lua",

        config = function()
            require("colorizer").setup({})
        end,
    },
    {
        "jparise/vim-graphql",
        lazy = false,
        event = "BufReadPre",
        ft = {
            "javascript",
            "typescript",
            "graphql",
        },
    },
}
