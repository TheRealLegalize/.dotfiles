return {
  {
    "nyoom-engineering/oxocarbon.nvim",
    lazy = false,          -- сразу грузим
    priority = 1000,       -- выше других тем
    config = function()
      vim.opt.termguicolors = true

      vim.cmd.colorscheme("oxocarbon")  -- применяем базовую тему

      -- Теперь наш soft low-contrast оверрайд (твои цвета)
      local c = {
        rosewater = "#e0e4e9",
        flamingo  = "#d47f9e",
        pink      = "#d99bbf",
        mauve     = "#b08de6",
        red       = "#e06670",
        maroon    = "#c45a60",
        peach     = "#e07a4a",
        yellow    = "#e0c070",
        green     = "#70b080",
        teal      = "#4a9fd9",
        sky       = "#80b0ff",
        sapphire  = "#5a9cff",
        blue      = "#3a8cff",
        lavender  = "#a0c0ff",
        text      = "#e0e4e9",
        base      = "#1a1a1a",
        mantle    = "#222222",
        crust     = "#101010",
        surface0  = "#2e2e2e",
        surface1  = "#3a3a3a",
        surface2  = "#4a4a4a",
        overlay0  = "#606060",
        overlay1  = "#707070",
        overlay2  = "#808080",
        subtext0  = "#b0b0b0",
        subtext1  = "#c0c0c0",
      }

      -- Оверрайдим ключевые группы (расширь по вкусу)
      local set_hl = vim.api.nvim_set_hl
      set_hl(0, "Normal",          { fg = c.text,      bg = c.base })
      set_hl(0, "Comment",         { fg = c.overlay1,  italic = true })
      set_hl(0, "String",          { fg = c.green })
      set_hl(0, "Character",       { fg = c.green })
      set_hl(0, "Number",          { fg = c.peach })
      set_hl(0, "Boolean",         { fg = c.peach })
      set_hl(0, "Float",           { fg = c.peach })
      set_hl(0, "Function",        { fg = c.blue })
      set_hl(0, "Keyword",         { fg = c.mauve })
      set_hl(0, "Conditional",     { fg = c.mauve })
      set_hl(0, "Repeat",          { fg = c.mauve })
      set_hl(0, "Operator",        { fg = c.mauve })
      set_hl(0, "Identifier",      { fg = c.text })
      set_hl(0, "Constant",        { fg = c.peach })
      set_hl(0, "Type",            { fg = c.yellow })
      set_hl(0, "LineNr",          { fg = c.overlay0 })
      set_hl(0, "CursorLineNr",    { fg = c.text })
      set_hl(0, "CursorLine",      { bg = c.mantle })
      set_hl(0, "StatusLine",      { bg = c.mantle, fg = c.text })
      set_hl(0, "StatusLineNC",    { bg = c.mantle, fg = c.overlay0 })
      set_hl(0, "Pmenu",           { bg = c.surface0, fg = c.text })
      set_hl(0, "Visual",          { bg = c.surface2 })

      -- Если юзаешь Treesitter, добавь эти (пример)
      set_hl(0, "@variable",       { fg = c.text })
      set_hl(0, "@function",       { fg = c.blue })
      set_hl(0, "@keyword",        { fg = c.mauve })
      set_hl(0, "@string",         { fg = c.green })
      -- и т.д.

      -- Для NvChad-specific (statusline, tabufline и прочее)
      vim.api.nvim_set_hl(0, "NvStatusLine", { bg = c.mantle, fg = c.text })
      -- Добавь больше, если нужно
    end,
  },
}
