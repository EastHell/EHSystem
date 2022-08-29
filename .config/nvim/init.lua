--[[ options ]]--
vim.opt.number = true -- shows line numbers
vim.opt.ignorecase = true -- make find ignoring case
vim.opt.smartcase = true -- make find ignoring case if no CAPS symbols entered
vim.opt.tabstop = 4 -- make tabs 4 spaces width
vim.opt.shiftwidth = 4 -- spaces per tab when shifting
vim.opt.expandtab = true -- use spaces instead of tab
vim.opt.smarttab = true -- indent/dedent in leading whitespaces

require('plugins')

--[[ feline ]]--
require('feline').setup()
require('feline').winbar.setup()

--[[ telescope ]]--
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
