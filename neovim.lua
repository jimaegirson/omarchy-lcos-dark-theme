-- LCOS for Neovim: navy + ice white, 90s title-bar blue
return {
  { "LazyVim/LazyVim", opts = { colorscheme = "lcos" } },
  {
    "lcos-colors",
    name = "lcos-colors",
    dir = vim.fn.stdpath("config"),
    lazy = false,
    priority = 1000,
    config = function()
      local c = {
        bg = "#0a1a31", fg = "#e8eef7", sel = "#0f203c", dim = "#3b536f",
        blue = "#33a4ff", title = "#86abd9", tan = "#e0c38a", green = "#4cc26b",
        red = "#ff5a6a", purple = "#a47fd6", cyan = "#7fd4ff", white = "#ffffff",
      }
      vim.cmd("hi clear")
      vim.g.colors_name = "lcos"
      vim.o.termguicolors = true
      local hl = function(g, o) vim.api.nvim_set_hl(0, g, o) end
      hl("Normal", { fg = c.fg, bg = c.bg })
      hl("CursorLine", { bg = c.sel })
      hl("Visual", { bg = "#3359d9", fg = c.white })
      hl("LineNr", { fg = c.dim })
      hl("CursorLineNr", { fg = c.title, bold = true })
      hl("Comment", { fg = "#5f7899", italic = true })
      hl("String", { fg = c.green })
      hl("Number", { fg = c.tan })
      hl("Keyword", { fg = c.blue, bold = true })
      hl("Function", { fg = c.white })
      hl("Type", { fg = c.cyan })
      hl("Identifier", { fg = c.fg })
      hl("Constant", { fg = c.purple })
      hl("Operator", { fg = c.title })
      hl("Error", { fg = c.red, bold = true })
      hl("StatusLine", { fg = c.bg, bg = c.title })
      hl("Pmenu", { fg = c.fg, bg = c.sel })
      hl("PmenuSel", { fg = c.white, bg = "#3359d9" })
    end,
  },
}
