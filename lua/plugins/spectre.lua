return {
  "nvim-pack/nvim-spectre",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("spectre").setup({
      highlight = {
        ui = "String",
        search = "DiffAdd",
        replace = "DiffChange",
      },
    })
  end,
  keys = {
    -- Toggle main Spectre panel (project-wide search & replace)
    {
      "<leader>rr",
      function() require("spectre").toggle() end,
      desc = "Spectre: Toggle UI"
    },
    -- Search & replace current word under cursor (project-wide)
    {
      "<leader>rw",
      function() require("spectre").open_visual({ select_word = true }) end,
      desc = "Spectre: Replace word under cursor"
    },
    -- Search & replace within current file only
    {
      "<leader>rf",
      function()
        require("spectre").open_file_search({ select_word = true })
      end,
      desc = "Spectre: Replace in current file"
    },
    -- Visual mode search & replace
    {
      "<leader>rs",
      mode = "v",
      function() require("spectre").open_visual() end,
      desc = "Spectre: Replace visual selection"
    },
  },
}
