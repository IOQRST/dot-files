return {
  "gbprod/nord.nvim",
  config = function()
    local nord_theme = require("nord")
    nord_theme.setup({})
    vim.cmd.colorscheme("nord")
    end,
}
