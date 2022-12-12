-- This is your opts table
require("telescope").setup {
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {}
    }
  }
}

require("telescope").load_extension("ui-select")
require("telescope").load_extension "file_browser"
