local status, packer = pcall(require, 'packer')
if (not status) then
  print('Packer is not installed')
  return
end
vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'glepnir/lspsaga.nvim'
  use 'L3MON4D3/LuaSnip' -- Snippet
  use 'hoob3rt/lualine.nvim' -- statusline
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'neovim/nvim-lspconfig' -- lsp
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  } -- code highlight
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via lua
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use 'karb94/neoscroll.nvim' -- Smooth scrolling

  use 'JoosepAlviste/nvim-ts-context-commentstring'

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup {
        pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
      }
    end,
  }
  use {
    'kylechui/nvim-surround',
    config = function()
      require('nvim-surround').setup()
    end,
  }
  use {
    'ggandor/lightspeed.nvim',
    config = function()
      require('lightspeed').setup {
        exit_after_idle_msecs = {
          labeled = 1500,
          -- Increase timeout for f/t keys
          unlabeled = 3000,
        },
      }
    end,
  }


  -- use {
  --   'rcarriga/nvim-notify',
  --   config = function()
  --     require 'j.plugins.notify'
  --   end,
  --   requires = { 'palenightfall.nvim' },
  -- }

  use 'tpope/vim-repeat' -- Make repeat (.) command smarter
  -- use 'tpope/vim-commentary'
  -- use 'tpope/vim-surround'

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- use 'yamatsum/nvim-cursorline' -- Highlight words and lines
  use 'miyakogi/conoline.vim'

  use 'mattn/emmet-vim'
  use 'akinsho/nvim-bufferline.lua'
  use "tiagovla/scope.nvim"
  use 'norcalli/nvim-colorizer.lua'

  use 'lewis6991/gitsigns.nvim'
  -- use 'dinhhuy258/git.nvim' -- For git blame & browse
  -- Git
  -- I only use the "blame" feature from this
  use {
    'tpope/vim-fugitive',
    cmd = { 'Git', 'G', 'Gstatus', 'Gblame', 'Gpush', 'Gpull', 'Gdiff' },
  }

  use({
    'glepnir/galaxyline.nvim',
    brach = 'main',
    config = function()
      require('galaxyline');
    end,
    -- some optional icons
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  })

  -- use {
  --     'glepnir/dashboard-nvim',
  --     event = 'VimEnter',
  --     config = function()
  --       require('dashboard').setup {
  --           theme = 'hyper',
  --           config = {
  --           }
  --           --config
  --       }
  --     end,
  --     requires = { 'nvim-tree/nvim-web-devicons' }
  -- }
  use({
    'ggandor/leap.nvim',
    config = function()
      require('leap').add_default_mappings()
    end
  })

  -- use({
  --   'folke/noice.nvim',
  --   config = function()
  --     require('noice').setup({
  --       lsp = {
  --         override = {
  --           ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
  --           ['vim.lsp.util.stylize_markdown'] = true,
  --           ['cmp.entry.get_documentation'] = true,
  --         },
  --       },
  --       presets = {
  --         bottom_search = true,
  --         command_palette = true,
  --         long_message_to_split = true,
  --         inc_rename = false,
  --         lsp_doc_border = false,
  --       }
  --     })
  --   end,
  --   requires = {
  --     'MunifTanjim/nui.nvim',
  --     'rcarriga/nvim-notify'
  --   }
  -- })
end)
