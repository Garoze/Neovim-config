vim.cmd [[packadd packer.nvim]]

local present, packer = pcall(require, 'core.packer')
if not present then
  return print('[core.packer] - Not found')
end

return packer.setup(function(use) 
  use {'wbthomason/packer.nvim'}
  use {'nvim-lua/popup.nvim'}
  use {'nvim-lua/plenary.nvim'}

  use {
    'monsonjeremy/onedark.nvim', 
    config = function() require('onedark').setup() end
  }
  
  use {'kyazdani42/nvim-web-devicons'}
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function()
      require('user.plugins.config.lualine')
    end
  }
end)
