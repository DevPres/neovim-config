---- Ensure PAcker installation
--local ensure_packer = function()
--    local fn = vim.fn
--    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
--    if fn.empty(fn.glob(install_path)) > 0 then
--        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
--        vim.cmd [[packadd packer.nvim]]
--        return true
--    end
--    return false
--end

--local packer_bootstrap = ensure_packer()
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- LSP
    use {
        -- LSP Support
        'neovim/nvim-lspconfig',             -- Required
        'williamboman/mason.nvim',           -- Optional
        'williamboman/mason-lspconfig.nvim', -- Optional
    }
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    -- Status Line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    -- For files searching
    use "nvim-lua/plenary.nvim"
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use("nvim-treesitter/playground")
    -- Colorscheme
    use 'folke/tokyonight.nvim'
    -- For Atomic color Higlighting
    use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})
    -- Indent lin
    use "lukas-reineke/indent-blankline.nvim"
    -- TreeNav
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
    }
    -- Git Stuff
    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
    -- Icons
    use 'nvim-tree/nvim-web-devicons'
    -- Float Terminal
    use 'voldikss/vim-floaterm'
    -- BufferLine
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
    use 'windwp/nvim-ts-autotag'
    -- Copilot
    use 'github/copilot.vim'
end)

