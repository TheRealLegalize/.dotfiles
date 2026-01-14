return { 
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      transparent_background = true,
      float = {
        transparent = true,
        solid = false,
      },
      color_overrides = {
        all = {
          -- blue = "#a6e3a1",
          -- green = "#89b4fa",
          base = "#181825"
        },
      }
    })
    vim.cmd.colorscheme "catppuccin"
  end
}
