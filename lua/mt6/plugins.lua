vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  requires = { {'nvim-lua/plenary.nvim'} },
  }
  use {
	  "tiagovla/tokyodark.nvim",
	  as = 'tokyodark',
	  config = function()
		  vim.cmd('colorscheme tokyodark')
	  end,
  }

  use {
	  'nvim-treesitter/nvim-treesitter',
	  {run = ':TSUpdate'},
  }
  use{'mbbill/undotree'}
  use {'tpope/vim-fugitive'}
  use {'ms-jpq/coq_nvim'}
  use {'ms-jpq/coq.artifacts'}
  use {'neovim/nvim-lspconfig'}
  use {'williamboman/mason.nvim'}
  use {'williamboman/mason-lspconfig.nvim'}
  use {'jay-babu/mason-nvim-dap.nvim'}
  use {'mfussenegger/nvim-dap'}
  use {'rcarriga/nvim-dap-ui'}

-- use {
	--   'VonHeikemen/lsp-zero.nvim',
	--   branch = 'v2.x',
	--   requires = {
	-- 	  -- LSP Support
	-- 	  {'neovim/nvim-lspconfig'},             -- Required
	-- 	  {'williamboman/mason.nvim'},           -- Optional
	-- 	  {'williamboman/mason-lspconfig.nvim'}, -- Optional

	-- 	  -- Autocompletion
	-- 	  {'hrsh7th/nvim-cmp'},     -- Required
	-- 	  {'hrsh7th/cmp-nvim-lsp'}, -- Required
	-- 	  {'L3MON4D3/LuaSnip'},     -- Required
	--   }
  -- }
end)
