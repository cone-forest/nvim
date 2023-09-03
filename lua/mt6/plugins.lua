vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use {'wbthomason/packer.nvim'}
  use {'MunifTanjim/nui.nvim'}
  use {'nvim-lua/plenary.nvim'}
  use {'nvim-telescope/telescope.nvim', tag = '0.1.2'}
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

  use {'mbbill/undotree'}
  use {'neovim/nvim-lspconfig'}
  use {'hrsh7th/nvim-cmp'}
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-cmdline'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-path'}
  use {'williamboman/mason.nvim'}
  use {'williamboman/mason-lspconfig.nvim'}
  use {'mfussenegger/nvim-dap'}
  use {'jay-babu/mason-nvim-dap.nvim'}
  use {'rcarriga/nvim-dap-ui'}
  use {'theHamsta/nvim-dap-virtual-text'}
  use {'nvim-telescope/telescope-dap.nvim'}
  use {'Civitasv/cmake-tools.nvim'}
  use {'jackMort/ChatGPT.nvim'}
end)
