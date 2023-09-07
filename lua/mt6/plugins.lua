vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use {'wbthomason/packer.nvim'}

  -- dependencies
  use {'MunifTanjim/nui.nvim'}
  use {'nvim-lua/plenary.nvim'}
  use {'nvim-telescope/telescope.nvim', tag = '0.1.2'}

  use {
	  'nvim-treesitter/nvim-treesitter',
	  {run = ':TSUpdate'},
  }

  -- mason
  use {'williamboman/mason.nvim'}

  -- lsp && autocompletion
  use {'neovim/nvim-lspconfig'}
  use {'hrsh7th/nvim-cmp'}
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-cmdline'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-path'}
  use {'williamboman/mason-lspconfig.nvim'}

  -- dap
  use {'mfussenegger/nvim-dap'}
  use {'jay-babu/mason-nvim-dap.nvim'}
  use {'rcarriga/nvim-dap-ui'}
  use {'theHamsta/nvim-dap-virtual-text'}
  use {'nvim-telescope/telescope-dap.nvim'}

  -- version control
  use {'f-person/git-blame.nvim'}
  use {'kdheepak/lazygit.nvim'}
  use {'mbbill/undotree'}

  -- file navigation
  use {'ThePrimeagen/harpoon'}
  use {'folke/trouble.nvim'}
  use {'preservim/tagbar'}

  -- cosmetic
  use {'nvim-lualine/lualine.nvim'}
  use {'nvim-tree/nvim-web-devicons'}
  use {'goolord/alpha-nvim'}
  -- themes
  use {"tiagovla/tokyodark.nvim", as = 'tokyodark'}
  use {'EdenEast/nightfox.nvim', as = 'nightfox'}

  -- code editing help
  use {'kylechui/nvim-surround'}
  use {'jackMort/ChatGPT.nvim'}

  -- language specific
  -- cpp
  use {'Civitasv/cmake-tools.nvim'}
end)
