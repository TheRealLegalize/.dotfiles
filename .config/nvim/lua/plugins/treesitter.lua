return { 
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  branch = 'main',
  build = ':TSUpdate',
  config = function()
    require'nvim-treesitter'.setup { install_dir = vim.fn.stdpath('data') .. '/site' }
    require'nvim-treesitter'.install { 'lua', 'bash', 'python', 'hyprlang', 'json', 'css' }
  end
}
