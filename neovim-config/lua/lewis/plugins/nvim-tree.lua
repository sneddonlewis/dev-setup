return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    -- disable netrw at the very start of your init.lua
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    require('nvim-web-devicons').setup {}

    vim.api.nvim_set_keymap('n', '<leader>tt', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>tf', ':NvimTreeFocus<CR>', { noremap = true, silent = true })

    require("nvim-tree").setup {
      view = {
        width = 45,
        side = "left",
      },
      filters = {
        dotfiles = false,
        git_ignored = false,
      },
    }
  end,
}
