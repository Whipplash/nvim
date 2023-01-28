vim.g.cmake_build_dir = "build"
vim.g.cmake_kits_global_path = "$HOME/.local/share/CMakeTools"
vim.g.cmake_compile_commands_link = "$HOME/pico/pico-personal/"
vim.keymap.set("n", "<leader>cmg", "<cmd>CMake<cr>",
  {silent = true, noremap = true}
)

vim.keymap.set("n", "<leader>cmb", "<cmd>CMakeBuild<cr>",
  {silent = true, noremap = true}
)
