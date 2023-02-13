vim.keymap.set("n",  "<leader>q", function() 
    vim.cmd(':FloatermNew');
end)
vim.keymap.set("n",  "<leader>qg", function() 
   vim.cmd(':FloatermNew! --height=0.9 --width=0.9 lazygit ');
end)
vim.keymap.set("n",  "<leader>qx", function() 
    vim.cmd(':FloatermHide');
end)
vim.keymap.set("n",  "<leader>qs", function() 
    vim.cmd(':FloatermShow');
end)
vim.keymap.set("n",  "<leader>qn" ,function() 
    vim.cmd(':FloatermNext');
end)


--vim.api.nvim_set_keymap("n",  "<leader>q" , <C-\><C-n>:FloatermNew<CR>
--vim.api.nvim_set_keymap("n",  <F8>    :FloatermPrev<CR>
--vim.api.nvim_set_keymap("n",  <F8>    <C-\><C-n>:FloatermPrev<CR>
--vim.api.nvim_set_keymap("n",  <F9>    :FloatermNext<CR>
--vim.api.nvim_set_keymap("n",  <F9>    <C-\><C-n>::FloatermNext<CR>
--vim.api.nvim_set_keymap("n",  <F12>   :FloatermToggle<CR>
--vim.api.nvim_set_keymap("n",  <F12>   <C-\><C-n>:FloatermToggle<CR>
