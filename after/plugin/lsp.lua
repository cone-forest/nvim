local lspconfig = require("lspconfig")
-- local coq = require('coq')

local function on_attach(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>rf", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)

  vim.keymap.set('n', "<leader>g", ':CMakeGenerate<CR>')
  vim.keymap.set('n', "<leader>b", ':CMakeBuild<CR>')
  vim.keymap.set('n', "<leader>G", ':CMakeGenerate!<CR>')
  vim.keymap.set('n', "<leader>B", ':CMakeBuild!<CR>')
end

lspconfig.lua_ls.setup {
  on_atach = on_attach,
}

lspconfig.gopls.setup {
  on_attach = on_attach,
  -- capabilities = capabilities,
  cmd = {"gopls"},
  filetypes = {"go", "gomod", "gowork", "gotmpl"},
  -- root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      }
    }
  }
}

lspconfig.pyright.setup({
  on_attach = on_attach,
  -- capabilities = capabilities,
  filetypes = {"python"},
})

lspconfig.clangd.setup({
  on_attach = on_attach,
  -- capabilities = capabilities,
  on_new_config = function(new_config, new_cwd)
    local status, cmake = pcall(require, "cmake-tools")
    if status then
      cmake.clangd_on_new_config(new_config)
    end
  end,
})
