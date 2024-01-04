vim.keymap.set("n", "YY", "va{Vy", { silent = true, noremap = true })

vim.keymap.set("n", "<up>", "<C-w><up>", { silent = true, noremap = true })
vim.keymap.set("n", "<down>", "<C-w><down>", { silent = true, noremap = true })
vim.keymap.set("n", "<left>", "<C-w><left>", { silent = true, noremap = true })
vim.keymap.set("n", "<right>", "<C-w><right>", { silent = true, noremap = true })
vim.keymap.set("n", "<right>", "<C-w><right>", { silent = true, noremap = true })

vim.keymap.set("n", "<A-k>", ":m-2<CR>==", { noremap = true })
vim.keymap.set("n", "<A-j>", ":m+1<CR>==", { noremap = true })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true })

vim.keymap.set("n", "<F11>", ":set spell!<CR>", { noremap = true })

-- Harpoon Keymaps
vim.keymap.set("n", "|", require("harpoon.mark").add_file, {})
vim.keymap.set("n", "<leader>m", require("harpoon.ui").toggle_quick_menu, {})
vim.keymap.set("n", "e", require("harpoon.ui").nav_next, {})

-- FZF Keymaps
vim.keymap.set("n", "<C-f>", ":Files<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<C-b>", ":Buffers<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<C-s>", ":GFiles?<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<C-d>", ":Commits!<CR>", { silent = true, noremap = true })

vim.keymap.set("n", "T", ":TroubleToggle<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "F", ":lua =require('trouble').next({jump=true, skip_groups = true})<cr>",
    { silent = true, noremap = true })

-- LSP Keymaps
local opts = { noremap = true, silent = true }
local bufopts = { noremap = true, buffer = bufnr, silent = true }

vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)
vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, bufopts)
vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, bufopts)
vim.keymap.set("n", "<space>wl", function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
end, bufopts)
vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, bufopts)
vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, bufopts)
vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, bufopts)
vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
vim.keymap.set("n", "<space>f", function()
    vim.lsp.buf.format({ async = true })
end, bufopts)
