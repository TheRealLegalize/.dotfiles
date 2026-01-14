return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  lazy = false,
  config = function()
    require("oil").setup({
      default_file_explorer = true,
      columns = {
        "icon",
        -- "permissions",
        -- "size",
        -- "mtime",
      },
      skip_confirm_for_simple_edits = true,
      keymaps = {
        ["q"] = "actions.close",
        ["<C-p>"] = "actions.preview",
      },
      float = {
        padding = 2,
        max_width = 0,
        max_height = 0,
        border = "shadow",
        win_options = {
          winblend = 0,
        },
      },
      -- vim.keymap.set("n", "<leader>n", "<CMD>Oil<CR>", { desc = "Open Oil" }),
    })
  end
}
