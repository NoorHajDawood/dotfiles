return {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000, -- Ensure it loads before other plugins
    opts = {
        style = 'night', -- "storm", "moon", "night", or "day"
        transparent = true, -- Enable/disable background transparency
        terminal_colors = true,
    },
    config = function(_, opts)
        require('tokyonight').setup(opts)
        vim.cmd.colorscheme 'tokyonight'
    end,
}
