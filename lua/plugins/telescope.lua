return {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>ff",
        function() require("telescope.builtin").find_files() end,
      },
      {
        "<leader>lg",
        function() require("telescope.builtin").live_grep() end,
      },
      {
        "<leader>fg",
        function() require("telescope.builtin").git_files() end,
      },
    },
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      }
    }
}

