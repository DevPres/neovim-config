vim.opt.termguicolors = true
require("bufferline").setup({
    options = {
        offsets = {{
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            separator = " " -- use a "true" to enable the default, or set your own character
        }}
    }
})
