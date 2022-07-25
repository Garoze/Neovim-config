local present, packer = pcall(require, 'core.packer')
if not present then
  return print('[core.packer] - Not found')
end

vim.cmd [[packadd packer.nvim]]

return packer.setup(function(use) 
  use {'wbthomason/packer.nvim'}
  use {'monsonjeremy/onedark.nvim', config = function()  require('onedark').setup() end}
  use {'nvim-lua/popup.nvim'}
  use {'nvim-lua/plenary.nvim'}
  use { "windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end }
end)
