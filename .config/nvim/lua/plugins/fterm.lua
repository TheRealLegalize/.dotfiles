return {
  'numToStr/FTerm.nvim',
  config = function()
    require('FTerm').setup({
      border = 'double',
      dimensions = { height = 0.9, width = 0.9 }
    })
    -- Биндишь клавишу здесь, чтобы она не отвалилась
    vim.keymap.set('n', '<leader>tt', '<CMD>lua require("FTerm").toggle()<CR>')
  end
}
