return {
  "catppuccin/nvim",
  lazy = true,
  name = "catppuccin",
  opts = {
    styles = {
      comments = { "italic" },
    },
    transparent_background = true,
    integrations = {
      aerial = true,
      blink_cmp = true,
      alpha = true,
      cmp = true,
      dashboard = true,
      flash = true,
      fzf = true,
      grug_far = true,
      gitsigns = true,
      headlines = true,
      illuminate = true,
      indent_blankline = { enabled = true },
      leap = true,
      lsp_trouble = true,
      mason = true,
      markdown = true,
      mini = true,
      native_lsp = {
        enabled = true,
        underlines = {
          errors = { "undercurl" },
          hints = { "undercurl" },
          warnings = { "undercurl" },
          information = { "undercurl" },
        },
      },
      navic = { enabled = true, custom_bg = "lualine" },
      neotest = true,
      neotree = true,
      noice = true,
      notify = true,
      semantic_tokens = true,
      snacks = true,
      telescope = true,
      treesitter = true,
      treesitter_context = true,
      which_key = true,
    },
    highlight_overrides = {
      all = function(color)
        return {
          -- ["@variable"] = { fg = "#c7d1ff" },
          -- ["@property"] = { fg = "#B5E8E0" },
          -- ["@variable.builtin"] = { fg = "#F38BA8" },
          ["@include.member.move"] = { fg = "#89b4fa" },
          ["@constructor.name.move"] = { fg = "#F9E2AF" },
          ["@namespace.module.name.move"] = { fg = "#b4befe" },
          ["@macro.call.move"] = { fg = "#e78284" },
          ["@function.call.move"] = { fg = "#89b4fa" },
          ["@list.variable.move"] = { fg = "#bac2de" },
          ["@list.move"] = { fg = "#f38ba8" },
        }
      end,
    },
    specs = {
      {
        "akinsho/bufferline.nvim",
        optional = true,
        opts = function(_, opts)
          if (vim.g.colors_name or ""):find("catppuccin") then
            opts.highlights = require("catppuccin.groups.integrations.bufferline").get()
          end
        end,
      },
    },
  },
}
