return {
  "WhoIsSethDaniel/mason-tool-installer",

  config = function()
    require("mason-tool-installer").setup({
      ensure_installed = {
        "prettier",
        "stylua",
        "eslint_d",
      },
    })
  end,
}
