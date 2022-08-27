-- [[ options ]] ---
vim.opt.number = true -- shows line numbers
vim.opt.ignorecase = true -- make find ignoring case
vim.opt.smartcase = true -- make find ignoring case if no CAPS symbols entered
vim.opt.tabstop = 4 -- make tabs 4 spaces width
vim.opt.shiftwidth = 4 -- spaces per tab when shidting
vim.opt.expandtab = true -- use spaces instead of tab
vim.opt.smarttab = true -- indent/dedent in leading whitespaces

-- [[ packer ]] --
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

-- [[ packages ]] --
return require('packer').startup(function(use)
  -- My plugins here
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
