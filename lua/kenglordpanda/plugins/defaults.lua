-- anything that I don't care about configuring should go in here

return {

{
  "nvim-lua/plenary.nvim",
},

{
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        require 'nordic' .load()
    end
},

}
