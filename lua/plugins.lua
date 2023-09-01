local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
    execute 'packadd packer.nvim'
end

return require('packer').startup(function(use)
    -- Packer can manage itself as an optional plugin
    use 'wbthomason/packer.nvim'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use({
        "glepnir/lspsaga.nvim",
        -- opt = true,
        branch = "main",
        event = "LspAttach",
        config = function()
            require("lspsaga").setup({})
        end,
        requires = {
            {"nvim-tree/nvim-web-devicons"},
            --Please make sure you install markdown and markdown_inline parser
            {"nvim-treesitter/nvim-treesitter"}
        }
    })
    use 'kabouzeid/nvim-lspinstall'
    -- Autocomplete
    use 'hrsh7th/nvim-compe'
    -- Function signatures
    use "ray-x/lsp_signature.nvim"

    -- Theme
    use 'drewtempelmeyer/palenight.vim'
    use 'kyazdani42/nvim-web-devicons'

    -- Syntax
    use 'sheerun/vim-polyglot'
    -- use {
    --     'prettier/vim-prettier',
    --     run = "yarn install",
    --     ft = {"javascript", "typescript", "json"}
    -- }
    use {'styled-components/vim-styled-components', branch = "main"}
    use 'dominikduda/vim_current_word'
    use {
        'lukas-reineke/indent-blankline.nvim',
        ft = {'yaml', 'yml', 'helm'},
        config = function()
            vim.opt.list = true
            vim.opt.listchars:append("space:⋅")
            vim.opt.listchars:append("eol:↴")

            require("indent_blankline").setup {
                show_end_of_line = true,
                space_char_blankline = " ",
            }
        end
    }

    use 'airblade/vim-rooter'
    
    -- Find tools.
    use { "nvim-telescope/telescope-file-browser.nvim" }
    use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
    }
    use { "junegunn/fzf" }
    use { "junegunn/fzf.vim" }


    -- Diagnostics
    -- Lua
    use {
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        require("trouble").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
        }
      end
    }

    -- Git symobls.
    use {
      'lewis6991/gitsigns.nvim',
      tag = 'release',
      config = function()
        require('gitsigns').setup()
      end
    }

    use 'jiangmiao/auto-pairs'
    use 'itchyny/lightline.vim'
    use 'itchyny/vim-gitbranch'

    -- Golang
    use 'fatih/vim-go'

    -- Pyhton
    -- use 'a-vrma/black-nvim'
    use {
        'psf/black', branch = "stable"
    }
    
    -- Ocaml
    use "lukas-reineke/lsp-format.nvim"

    -- Comments
    use 'tpope/vim-commentary'

    -- Smooth scrolling
    use 'psliwka/vim-smoothie'

    end)
