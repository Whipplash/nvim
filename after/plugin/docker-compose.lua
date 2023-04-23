require'lspconfig'.docker_compose_language_service.setup{
  filetypes = {"yaml"},
  root_dir = require'lspconfig'.util.root_pattern("docker-compose.yml"),
  single_file_support = true

}
