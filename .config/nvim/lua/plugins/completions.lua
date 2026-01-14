return {
  {
    "saghen/blink.cmp",
    -- Используем стабильную версию
    version = "v0.*",
    dependencies = {
      "L3MON4D3/LuaSnip",
      "rafamadriz/friendly-snippets",
    },
    opts = {
      -- Настройка движка сниппетов (LuaSnip)
      snippets = {
        preset = "luasnip",
      },

      -- Горячие клавиши (адаптировано под ваш запрос)
      keymap = {
        preset = "none", -- Отключаем стандартные, чтобы настроить свои
        ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
        ["<M-e>"] = { "hide" },
        ["<Tab>"] = { "select_and_accept", "fallback" },
        
        -- Навигация (добавлена для удобства, так как в cmp она была в пресете)
        ["<Up>"] = { "select_prev", "fallback" },
        ["<Down>"] = { "select_next", "fallback" },
        ["<C-p>"] = { "select_prev", "fallback" },
        ["<C-n>"] = { "select_next", "fallback" },
      },

      -- Внешний вид (бордюры окон)
      completion = {
        menu = { border = "rounded" },
        documentation = { window = { border = "rounded" }, auto_show = true },
      },

      -- Источники данных
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },
    },
    config = function(_, opts)
      -- Загружаем сниппеты из friendly-snippets
      require("luasnip.loaders.from_vscode").lazy_load()
      require("blink.cmp").setup(opts)
    end,
  },
}
