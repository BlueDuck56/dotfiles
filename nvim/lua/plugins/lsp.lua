return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        html = {},
        cssls = {},
        emmet_language_server = {
          init_options = {
            syntaxProfiles = {
              html = {
                inline_break = 1,
              },
            },
            preferences = {
              ["output.inlineBreak"] = 1,
            },
          },
        },
      },
    },
  },
}
