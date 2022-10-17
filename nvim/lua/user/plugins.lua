local install_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"


if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = vim.fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer. Close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

vim.cmd([[
augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end
]])

return require("packer").startup(function(use)

    -- Packer can manage itself
    use "wbthomason/packer.nvim"

    -- colorscheme
    use "sainnhe/sonokai"

    -- FZF
    use "junegunn/fzf"

    -- treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    }
    use "JoosepAlviste/nvim-ts-context-commentstring"
    -- Auto pairs
    use "windwp/nvim-autopairs"
    -- Rainbow
    use "p00f/nvim-ts-rainbow"

    -- cmp plugins
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-cmdline"
    use "hrsh7th/cmp-nvim-lsp"
    -- use "hrsh7th/cmp-nvim-lsp-signature-help"
    use "L3MON4D3/LuaSnip"
    use "saadparwaiz1/cmp_luasnip"

    -- LSP
    use {
        "neovim/nvim-lspconfig",
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        -- "williamboman/nvim-lsp-installer",
    }
    use 'simrat39/rust-tools.nvim'
    use "lvimuser/lsp-inlayhints.nvim"
    use "https://git.sr.ht/~whynothugo/lsp_lines.nvim"
    -- use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters

    -- LSP Signature
    use "ray-x/lsp_signature.nvim"

    -- Toggleterm
    use { "akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end }

    -- status line
    use 'kyazdani42/nvim-web-devicons'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- Telescope
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-media-files.nvim'

    -- Greeter
    use {
        'goolord/alpha-nvim',
        config = function()
            require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
        end
    }

    -- Illuminate words
    use "RRethy/vim-illuminate"

    -- NvimTree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    -- comments
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    -- Git
    use "lewis6991/gitsigns.nvim"
    use "f-person/git-blame.nvim"
    use "ruifm/gitlinker.nvim"
    use "mattn/vim-gist"
    use "mattn/webapi-vim"
    use {
        'pwntester/octo.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope.nvim',
            'kyazdani42/nvim-web-devicons',
        },
        config = function()
            require "octo".setup()
        end
    }

    -- statusline
    -- use {
    --     "SmiteshP/nvim-navic",
    --     requires = "neovim/nvim-lspconfig"
    -- }

    -- using packer.nvim
    use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons' }

    -- whichkey
    use {
        "folke/which-key.nvim",
        config = function()
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    -- css
    use "ap/vim-css-color"

    -- Julia
    use "JuliaEditorSupport/julia-vim"

    -- Maximize panes
    use "szw/vim-maximizer"

    -- Buffers
    use 'matbme/JABS.nvim'

    -- Debugging
    use 'mfussenegger/nvim-dap'
    use 'leoluz/nvim-dap-go'
    use 'theHamsta/nvim-dap-virtual-text'
    use 'nvim-telescope/telescope-dap.nvim'
    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }



end)
