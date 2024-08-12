require("CopilotChat").setup({
  debug = true,
  show_help = "yes",
  prompts = {
    Explain = "Explain how it works by Japanese language.",
    Review = "Review the following code and provide concise suggestions.",
    Tests = "Briefly explain how the selected code works, then generate unit tests.",
    Refactor = "Refactor the code to improve clarity and readability.",
  },
  build = function()
    vim.notify("Please update the remote plugins by running ':UpdateRemotePlugins', then restart Neovim.")
  end,
  window = {
    layout = 'float',
    relative = 'editor',
    width = 0.8,
    height = 0.8,
  },
  event = "VeryLazy",
})
