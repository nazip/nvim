return {
      'nvim-neo-tree/neo-tree.nvim',
      branch = 'v3.x',
      dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
        'MunifTanjim/nui.nvim',
         -- {'3rd/image.nvim', opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
     },
     lazy = false, -- neo-tree will lazily load itself
  --- @module "neo-tree"
  --- @type neotree.Config
     opts = {
    -- fill any relevant options here
     },
     config = function()
      vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})
      vim.keymap.set('n', '<C-j>', '<C-w><Left>', {})
      vim.keymap.set('n', '<C-k>', '<C-w><Right>', {})
      window = {
        mappings = {
          ["P"] = {
            "toggle_preview",
            config = {
            use_float = false,
          -- use_image_nvim = true,
          -- title = 'Neo-tree Preview',
            },
        },
      }
    }
    end
}
