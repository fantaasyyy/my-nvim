require("plugins.plugins")
require("configs.settings")
require("shortkeys.keybinds")
require("plugins.treesitter")
require("plugins.auto-complite")
require("plugins.explorer")
require("plugins.lspconfig")
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
require("nvim-autopairs").setup({
	disable_filetype = { "TelescopePrompt" },
})

-- Colorizer
require("colorizer").setup()

-- Git signs
require("gitsigns").setup()

-- Bufferline
require("bufferline").setup()

-- Lualine
require("lualine").setup()


