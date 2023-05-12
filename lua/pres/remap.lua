-- Remap space
    vim.keymap.set("n", " ", "<Nop>", { silent = true, remap = false })
    vim.g.mapleader = " "
    -- Go to folder tree
    vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
    -- For moving Blocks in vis. mode
    vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
    vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
    -- Remove space line empty under, an the cursor stay at start
    vim.keymap.set("n", "J", "mzJ`z")
    -- Stay in the middle bro
    vim.keymap.set("n", "<C-d>", "<C-d>zz")
    vim.keymap.set("n", "<C-u>", "<C-u>zz")
    vim.keymap.set("n", "n", "nzzzv")
    vim.keymap.set("n", "N", "Nzzzv")
    -- Preserving clip when highlight
    vim.keymap.set("x", "<leader>p", [["_dP]])
    -- Copy to OS clipboard
    vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
    vim.keymap.set("n", "<leader>Y", [["+Y]])
    vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
    -- Remapping ctrl-c
    vim.keymap.set("i", "<C-c>", "<Esc>")
    -- Search helper
    vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
    -- Make Exec
    vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
    -- switch buffer
    vim.keymap.set("n", "<M-Tab>", ":bn<CR>", { silent = true })

-- Go to normal mode
vim.keymap.set("t", "<leader><esc>", "<C-\\><c-n>", { noremap = true, silent=true })
