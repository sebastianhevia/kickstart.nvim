-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function ()
    require('neo-tree').setup {
      filesystem = {
      filtered_items = {
	 visible = false,
	 show_hidden_count = true,
	 hide_dotfiles = false,
	 hide_gitignored = false,
	 never_show = {
	   --'.git/',
	   --'.DS_Store',
	   --'thumbs.db',
	 },
      },
    }
    }
  end,
}

