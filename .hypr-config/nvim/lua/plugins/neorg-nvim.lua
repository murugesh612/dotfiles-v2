return {
  {

    "nvim-neorg/neorg",
    -- build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
    -- version = "v7.0.0",
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {},  -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.dirman"] = {      -- Manages Neorg workspaces
            config = {
              workspaces = {
                notes = "~/Notes/",
                work = "~/Work/notes",
              },
              default_workspace = "notes",
              open_last_workspace = false,
            },
          },
          ["core.export"] = {},
        },
      })
    end,
  },
}
