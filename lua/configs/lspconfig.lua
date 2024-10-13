-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = {
  'html',
  'cssls',
  'gopls',
  'bashls',
  -- 'awk_ls',
  'rust_analyzer',
  'prismals',
  'docker_compose_language_service',
  'dockerls',
  'clangd',
  'nginx_language_server',
  'cmake',
  'biome',
}
local nvlsp = require "nvchad.configs.lspconfig"

require("mason-lspconfig").setup()

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }

require('lspconfig').biome.setup({})
