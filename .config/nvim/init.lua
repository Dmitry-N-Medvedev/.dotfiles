-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require'lspconfig'.zls.setup{
  cmd = { '/home/dmitry/bin/stage3/bin/zls' },
  filetypes = { 'zig' },
  single_file_support = true,
}
