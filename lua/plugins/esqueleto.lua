return {
  "cvigilv/esqueleto.nvim",
  opts = {},
  config = function()
    require("esqueleto").setup({
      patterns = {
        "c",
        "css",
        "haskell",
        "html",
        "javascript",
        "json",
        "LICENSE",
        "lua",
        "README",
        "rust",
        "toml",
        "typescript",
      },
    })
  end,
}
