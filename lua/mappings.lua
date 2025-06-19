require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map({ "n" }, "<leader>t", "<cmd> NvimTreeToggle <cr>")
map({ "n" }, "<leader>f", "<cmd> NvimTreeFindFile <cr>")

map({ "n" }, "<leader>r", function()
  vim.lsp.buf.format({ async = true })
end, {desc = "Fromat with LSP"})


-- remove conflict keymap
vim.keymap.del('n', '<leader>gt')
map({ "n" }, "<leader>g", function()
  vim.lsp.buf.definition()
end, {desc = "Go to definition"})

map("n", "<F7>", function()
  vim.fn.setreg('+', vim.fn.expand('%:p'))
end, { desc = "Copy full file path to clipboard" })

-- configuration
-- show Lazy.vim configuration panel
map({ "n" }, "<leader>z", "<cmd> Lazy <cr>")

-- show key bindings
map({ "n" }, "<leader>k", "<cmd> Telescope keymaps <cr>")

-- show file browser, useful when exploring dependencies source code
map({ "n" }, "<leader>o", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
