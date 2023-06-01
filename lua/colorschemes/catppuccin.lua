return {
    "catppuccin/nvim", 
    name = "catppuccin",

    lazy = false,

    config = function()
        require("catppuccin").setup({
            flavour = "mocha", -- latte, frappe, macchiato, mocha
            background = { -- :h background
                light = "latte",
                dark = "mocha",
            },
            transparent_background = false,
            show_end_of_buffer = false, -- show the '~' characters after the end of buffers
            term_colors = true,
            floating_border = "on", -- "auto" | "on" | "off"
            dim_inactive = {
                enabled = false,
                shade = "dark",
                percentage = 0.2,
            },
            no_italic = false, -- Force no italic
            no_bold = false, -- Force no bold
            styles = {
                comments = { "italic" },
                conditionals = { "italic" },
                loops = {},
                functions = {},
                keywords = {},
                strings = {},
                variables = {},
                numbers = {},
                booleans = {},
                properties = {},
                types = {},
                operators = {},
            },
            color_overrides = {
                all = {
                    base = "#1E1E1E",
                    mantle = "#1E1E1E",
                    crust = '#45475A'
                },
            },
            custom_highlights = {},
            integrations = {
                cmp = true,
                gitsigns = true,
                nvimtree = true,
                telescope = true,
                notify = false,
                mini = false,
                fidget = true,
                -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
            },
    })

    vim.cmd.colorscheme "catppuccin"
end,
}
