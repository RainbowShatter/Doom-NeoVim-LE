-- A very generic file for showing examples of plugin groups.
return {
  {
    "ownername/owner-repo",
    -- Plugin description
    config = function()
      require("owner-repo").setup()
    end,
  },
  {},
}
