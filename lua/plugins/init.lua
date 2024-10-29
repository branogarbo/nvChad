return {
  {
    'stevearc/conform.nvim',
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require 'configs.conform',
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    'neovim/nvim-lspconfig',
    config = function()
      require 'configs.lspconfig'
    end,
  },
  -- {
  --   'mrcjkb/rustaceanvim',
  --   version = '^5', -- Recommended
  --   lazy = false, -- This plugin is already lazy
  -- },
  {
    'williamboman/mason-lspconfig.nvim',
  },
  {
  	'nvim-treesitter/nvim-treesitter',
  	opts = {
  		ensure_installed = {
        'vim', 'lua', 'vimdoc',
        'html', 'css',
        'go',
        'prisma',
        'javascript',
        'awk',
        'bash',
        'svelte',
        'python',
  		},
  	},
  },
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {
      heading = {
        position = 'inline',
      },
    },
  },
}
