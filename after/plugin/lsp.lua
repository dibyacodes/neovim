
-- Set up Mason first
require('mason').setup({})

-- Set up Mason-Lspconfig and ensure servers are installed
require('mason-lspconfig').setup({
  ensure_installed = {'html','pyright', 'tailwindcss', 'ts_ls', 'eslint' },  -- Add other servers as needed
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  },
})




-- enabling auto completion

local cmp = require('cmp')
cmp.setup({
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
  },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<CR>'] = cmp.mapping.confirm({ select = false }),
  }),
})




local lsp = require 'lsp-zero'

require('lspconfig').ts_ls.setup{
  filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" }
}

lsp.preset('recommended')

lsp.configure('lua_ls', {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
})


lsp.setup()
