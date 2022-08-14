-- Install packer
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

-- stylua: ignore start
require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'                                                  						    -- Package manager
  use 'tpope/vim-fugitive'                                                        							-- Git commands in nvim
  use 'tpope/vim-rhubarb'                                                        						    -- Fugitive-companion to interact with github
  use {'lewis6991/gitsigns.nvim', requires = 'nvim-lua/plenary.nvim'}       	  							-- Add git related info in the signs columns and popups
  use 'numToStr/Comment.nvim'                                                     							-- "gc" to comment visual regions/lines
  use 'nvim-treesitter/nvim-treesitter'                                           							-- Highlight, edit, and navigate code
  use 'nvim-treesitter/nvim-treesitter-textobjects'                        								    -- Additional textobjects for treesitter
  use 'neovim/nvim-lspconfig'                                                    						    -- Collection of configurations for built-in LSP client
  use 'williamboman/mason.nvim'                                         		  							-- Automatically install language servers to stdpath
  use 'williamboman/mason-lspconfig.nvim'
  use {'hrsh7th/nvim-cmp', requires = 'hrsh7th/cmp-nvim-lsp'}                 	 							-- Autocompletion
  use {'L3MON4D3/LuaSnip', requires = 'saadparwaiz1/cmp_luasnip'}              								-- Snippet Engine and Snippet Expansion
  use 'gruvbox-community/gruvbox'                                               						    -- Theme inspired by Atom
  use 'lukas-reineke/indent-blankline.nvim'                                       							-- Add indentation guides even on blank lines
  use 'tpope/vim-sleuth'                                                         							-- Detect tabstop and shiftwidth automatically
  use {'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim'}   								-- Fuzzy Finder (files, lsp, etc)
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use {"yioneko/nvim-yati", requires = "nvim-treesitter/nvim-treesitter"}
  use 'mattn/emmet-vim'
  use {'michaelb/sniprun', run = 'bash ./install.sh'}
  use 'norcalli/nvim-colorizer.lua'
  use 'onsails/lspkind-nvim'
  use 'kyazdani42/nvim-web-devicons'
  use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons', tag = 'nightly'}
  use {'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}}
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable "make" == 1} 		-- Fuzzy Finder Algorithm
  use {'romgrk/barbar.nvim', requires = 'kyazdani42/nvim-web-devicons'}

  if packer_bootstrap then
    require('packer').sync()
  end
end)
-- stylua: ignore end

-- When we are bootstrapping a configuration, it doesn't
-- make sense to execute the rest of the init.lua.
--
-- You'll need to restart nvim, and then it will work.
if packer_bootstrap then
  print '=================================='
  print '    Plugins are being installed'
  print '    Wait until Packer completes,'
  print '       then restart nvim'
  print '=================================='
  return
end

-- Automatically source and re-compile packer whenever you save this file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])