local M = {}

local opts = { noremap = true, silent = true },

local function keymap(bufnr, mode, keys, command)
  vim.api.nvim_buf_set_keymap(bufnr, mode, keys, command, opts)
end

function M.set_keymaps(bufnr)
  -- Default keymaps
  keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
  keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
  keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
  keymap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
  keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
  keymap(bufnr, "n", "gl", '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics({ border = "rounded" })<CR>')
  keymap(bufnr, "n", "[d", '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>')
  keymap(bufnr, "n", "]d", '<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>')
  keymap(bufnr, "n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
  keymap(bufnr, "n", "<leader>rr", "<cmd>lua vim.lsp.buf.rename()<CR>")
  keymap(bufnr, "n", "<leader>qf", "<cmd>lua vim.lsp.buf.code_action()<CR>")
  keymap(bufnr, "n", "<leader>f", "<cmd>lua vim.diagnostic.open_float()<CR>")
  keymap(bufnr, "n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>")
  -- Enable formatting
  vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting()' ]]
end

return M
