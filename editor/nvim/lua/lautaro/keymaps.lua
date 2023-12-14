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
vim.keymap.set("n", "<C-f>", ":Files<CR>", { noremap = true })
vim.keymap.set("n", "<F11>", ":set spell!<CR>", { noremap = true })

vim.keymap.set("n", "<leader>r", ":lua require('rest-nvim').run()<CR>", { noremap = true })

vim.keymap.set("n", "<leader>ll", ":DBUIToggle<CR>", { noremap = true })

vim.keymap.set("n", "<F2>", ":DapToggleBreakpoint<CR>", { noremap = true })
vim.keymap.set("n", "<F3>", ":DapContinue<CR>", { noremap = true })
