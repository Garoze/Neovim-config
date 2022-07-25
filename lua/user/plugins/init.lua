vim.cmd [[packadd packer.nvim]]

local present, packer = pcall(require, 'core.packer')
if not present then
  return print('[core.packer] - Not found')
end

return packer.setup(function(use) 
  -- Packer stuff
  use {'wbthomason/packer.nvim'}
  use {'nvim-lua/popup.nvim'}
  use {'nvim-lua/plenary.nvim'}

  -- Colorscheme
  use {
    'monsonjeremy/onedark.nvim', 
    config = function() 
      require('user.plugins.config.onedark')
    end
  }
  
  -- Lualine
  use {'kyazdani42/nvim-web-devicons'}
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function()
      require('user.plugins.config.lualine')
    end
  }

  -- Bufferline
  use {
    'akinsho/bufferline.nvim', tag = "v2.*", 
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() 
      require('user.plugins.config.bufferline')
    end
  }

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
