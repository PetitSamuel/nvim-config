-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'


  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('nvim-lua/plenary.nvim')
  use('ThePrimeagen/harpoon')
  use ('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('neovim/nvim-lspconfig')



  -- Nvim-cmp (Completion Plugin)
  use 'hrsh7th/nvim-cmp'

  -- Sources for nvim-cmp
  use 'hrsh7th/cmp-nvim-lsp'   -- LSP source (gets completions from gopls)
  use 'hrsh7th/cmp-buffer'     -- Buffer words source
  use 'hrsh7th/cmp-path'       -- Filesystem path source
  use 'hrsh7th/cmp-cmdline'    -- Cmdline source

  -- Snippet Engine (Recommended for LSP snippets)
  use 'L3MON4D3/LuaSnip'        -- Snippet engine
  use 'saadparwaiz1/cmp_luasnip' -- Snippet source for nvim-cmp

  -- Optional: Icons for completion menu
  use 'kyazdani42/nvim-web-devicons' -- Add filetype icons

  -- Optional: Better completion menu formatting
  use 'onsails/lspkind.nvim' -- Add icons and better formatting to completion menu
end)

