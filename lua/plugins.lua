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
    use 'glepnir/lspsaga.nvim'
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
    use {'prettier/vim-prettier', run = "yarn install"}
    use {'styled-components/vim-styled-components', branch = "main"}

    -- FZF
    use '/usr/local/opt/fzf'
    use 'junegunn/fzf.vim'
    use 'airblade/vim-rooter'

    use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }


    -- Git symobls.
    use {
     'lewis6991/gitsigns.nvim',
      requires = {
        'nvim-lua/plenary.nvim'
      },
      config = function()
        require('gitsigns').setup()
      end
    }

    use 'jiangmiao/auto-pairs'
    use 'itchyny/lightline.vim'

    -- Golang
    use 'fatih/vim-go'

    -- Pyhton
    use 'a-vrma/black-nvim'

    -- Comments
    use 'tpope/vim-commentary'

    end)
