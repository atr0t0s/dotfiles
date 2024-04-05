return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.6",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = {
    pickers = {
      buffers = {
        initial_mode = "normal",
        ignore_current_buffer = true,
        sort_lastused = true,
      },
    },
  },
}
