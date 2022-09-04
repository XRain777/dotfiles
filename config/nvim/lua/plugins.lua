return require('packer').startup(function()
  use { 'wbthomason/packer.nvim' }
  use { 'RRethy/nvim-base16' }
  use { 'akinsho/toggleterm.nvim' }
  use { 'ellisonleao/glow.nvim', branch = 'main' }
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })  
  use { 'kyazdani42/nvim-tree.lua' }
  use { 'kyazdani42/nvim-web-devicons' }
  use { 'norcalli/nvim-colorizer.lua' }
  use { 'nvim-lualine/lualine.nvim' }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'p00f/nvim-ts-rainbow' }
  use { 'rstacruz/vim-closer' }
  use { 'jaxbot/semantic-highlight.vim' }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { 'SidOfc/mkdx' }
end)
