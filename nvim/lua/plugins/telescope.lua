local utils = require("telescope.utils")

return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader><space>",
      function()
        require("telescope.builtin").find_files({ cwd = utils.buffer_dir() })
      end,
      desc = "Find Files (cwd)",
    },
    {
      "<leader>fs",
      function()
        require("telescope.builtin").treesitter({ ignore_symbols = { "parameter" } })
      end,
      desc = "Search Symbol",
    },
  },
}
