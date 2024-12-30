return {
  "zbirenbaum/copilot.lua",
  enabled = true,
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("config.copilot")
  end,
}
