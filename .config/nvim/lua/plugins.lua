local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function(use)
  -- Manage packer by himself
    use 'wbthomason/packer.nvim'

    use {
      'xbase-lab/xbase',
        run = 'make install', -- make free_space (not recommended, longer build time)
        requires = {
          "nvim-lua/plenary.nvim",
          "nvim-telescope/telescope.nvim",
          "neovim/nvim-lspconfig"
        },
        config = function()
          require'xbase'.setup({})  -- see default configuration bellow
        end
    }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
