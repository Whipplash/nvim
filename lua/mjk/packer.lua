local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.opt.termguicolors = true
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Themes
  use({'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  })
  use 'Yazeed1s/oh-lucy.nvim'
  use 'kvrohit/mellow.nvim'
  use 'tanvirtin/monokai.nvim'
  use 'KoBruhh/tranquil-nvim'
  use ({ 'projekt0n/github-nvim-theme', tag = 'v0.0.7' })

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  -- Snippet Collection (Optional)
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  use {'nvim-lualine/lualine.nvim'}
  use {'folke/trouble.nvim',
    requires = "kyazdani42/nvim-web-devicons"
  }
  use {'petertriho/nvim-scrollbar'}
  use {'RRethy/vim-illuminate'}
  use {'mhinz/vim-startify'}
  use {'sudormrfbin/cheatsheet.nvim',
    requires = {
      {'knvim-telescope/telescope.nvim'},
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'},
    }
  }
  use {'rcarriga/nvim-notify'}
  use {'folke/which-key.nvim'}
  use {'JASONews/glow-hover'}

  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
  use('MunifTanjim/prettier.nvim')
  use {'jose-elias-alvarez/null-ls.nvim',
    requires = {
      {'nvim-lua/plenary.nvim'},
    }
  }

  --  -- install without yarn or npm
  --  use({"iamcco/markdown-preview.nvim",
  --      run = function() vim.fn["mkdp#util#install"]() end,
  --  })
  --  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
  --
  -- Requires Deno installed (binary)
  use({ 'toppair/peek.nvim', run = 'deno task --quiet build:fast' })
  use 'archibate/lualine-time'
  use {
      "yorik1984/zola.nvim",
      requires = {
          "Glench/Vim-Jinja2-Syntax",
          "cespare/vim-toml",             -- for Neovim ⩽ 0.6.0
      }
  }
  use {'xiyaowong/transparent.nvim'}
  use {'lukas-reineke/indent-blankline.nvim'}

  use 'm4xshen/hardtime.nvim'

  if packer_bootstrap then
    require('packer').sync()
  end
end)
