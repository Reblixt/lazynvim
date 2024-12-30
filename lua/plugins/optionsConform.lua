return {
  "stevearc/conform.nvim",
  opts = {
    default_format_opts = {
      timeout_ms = 3000,
      async = false, -- not recommended to change
      quiet = false, -- not recommended to change
      lsp_format = "fallback", -- not recommended to change
    },
    formatters_by_ft = {
      lua = { "stylua" },
      fish = { "fish_indent" },
      sh = { "shfmt" },
      solidity = { "solhint" },
      css = { "prettierd" },
      html = { "prettierd" },
      http = { "prettierd" },
      javascript = { "prettierd" },
      json = { "prettierd" },
      typescript = { "prettierd" },
      tsx = { "prettierd" },
      move = { "prettier-move" },
      prisma = { "prettierd" },
    },
    -- The options you set here will be merged with the builtin formatters.
    -- You can also define any custom formatters here.
    ---@type table<string, conform.FormatterConfigOverride|fun(bufnr: integer): nil|conform.FormatterConfigOverride>
    formatters = {
      injected = { options = { ignore_errors = true } },
      ["prettier-move"] = {
        command = "prettier-move",
        args = { "--stdin-filepath", "$FILENAME" },
        range_args = function(_, ctx)
          local util = require("conform.util")
          local lo, hi = util.get_offsets_from_range(ctx.buf, ctx.range)
          return {
            "--stdin-filepath",
            "$FILENAME",
            "--range-start=" .. lo,
            "--range-end=" .. hi,
          }
        end,
      },
      -- # Example of using dprint only when a dprint.json file is present
      -- dprint = {
      --   condition = function(ctx)
      --     return vim.fs.find({ "dprint.json" }, { path = ctx.filename, upward = true })[1]
      --   end,
      -- },
      --
      -- # Example of using shfmt with extra args
      -- shfmt = {
      --   prepend_args = { "-i", "2", "-ci" },
      -- },
    },
  },
}
