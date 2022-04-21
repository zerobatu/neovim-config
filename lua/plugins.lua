-- config plugins
vim.cmd [[packadd packer.nvim]]

local use = require('packer').use
require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager
  use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client

  -- navegation plugins
  use 'preservim/nerdtree'

  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'

  -- Language Plugins
  use 'sheerun/vim-polyglot'

  -- Nvim CMP
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  -- For vsnip users.
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  -- For luasnip users.
  -- use 'saadparwaiz1/cmp_luasnip'
  -- use 'L3MON4D3/LuaSnip'

  --  For ultisnips users.
  -- use 'quangnguyen30192/cmp-nvim-ultisnips'
  -- use 'SirVer/ultisnips'

  -- For snippy users.
  -- use 'dcampos/cmp-snippy'
  -- use 'dcampos/nvim-snippy'

  ------------------------------------------
  ------------------------------------------
  -- Elixir Plugins
  use 'mhinz/vim-mix-format'

  -- Theme
  use 'morhetz/gruvbox'

  -- Complements
  use 'itchyny/lightline.vim'
end)
