local lspconfig = require("lspconfig")

return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      solargraph = {
        cmd = { "bundle", "exec", "solargraph", "stdio" },
        root_dir = lspconfig.util.root_pattern("Gemfile", ".git", "."),
      },
    },
  },
}
