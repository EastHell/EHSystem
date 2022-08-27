-- [[ options ]] ---
vim.opt.number = true -- shows line numbers
vim.opt.ignorecase = true -- make find ignoring case
vim.opt.smartcase = true -- make find ignoring case if no CAPS symbols entered
vim.opt.tabstop = 4 -- make tabs 4 spaces width
vim.opt.shiftwidth = 4 -- spaces per tab when shidting
vim.opt.expandtab = true -- use spaces instead of tab
vim.opt.smarttab = true -- indent/dedent in leading whitespaces

-- [[ packer ]] --
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  print('Installing Packer')
  vim.cmd(':!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

-- [[ starts packer ]] --
vim.cmd [[ packadd packer.nvim ]]

-- [[ packages ]] --
require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
end)
