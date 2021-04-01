local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
    execute 'packadd packer.nvim'
end

return require('packer').startup(function(use)
    -- Packer can manage itself as an optional plugin
    use 'wbthomason/packer.nvim'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'glepnir/lspsaga.nvim'

    -- Autocomplete
    use 'hrsh7th/nvim-compe'
    
    -- Theme
    use 'drewtempelmeyer/palenight.vim'
    use 'kyazdani42/nvim-web-devicons'

    -- Syntax
    use 'sheerun/vim-polyglot'
    use {'prettier/vim-prettier', run = "yarn install"}
    
    -- FZF
    use '/usr/local/opt/fzf'
    use 'junegunn/fzf.vim'

    use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

    use 'jiangmiao/auto-pairs'
    use 'itchyny/lightline.vim'

    end)
