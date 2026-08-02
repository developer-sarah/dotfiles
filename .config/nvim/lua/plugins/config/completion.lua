require("blink.cmp").setup({
  keymap = {
    preset = "none",
    ["<s-tab>"] = { "show", "insert_prev", "fallback", },
    ["<tab>"] = {
      function(cmp)
        if cmp.is_menu_visible() then
          return cmp.insert_next()
        end
      end,
      "fallback",
    },
    ["<c-s>"] = { "show_signature", "hide_signature", "fallback" },
    ["<enter>"] = { "accept", "fallback" },
    ["<esc>"] = { "cancel", "fallback" },
  },
  fuzzy = {
    sorts = { "score", "exact", "sort_text", }
  },
  completion = {
    documentation = {
      auto_show = true,
      window = {
        direction_priority = {
          menu_north = { 'n', 's', 'e', 'w' },
          menu_south = { 's', 'n', 'e', 'w' },
        },
      },
    },
    menu = { auto_show = false },
  },
  signature = {
    enabled = true,
    trigger = {
      enabled = false,
    },
  },
})
