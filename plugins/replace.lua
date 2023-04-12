return {
   "nvim-lua/plenary.nvim",
   "nvim-pack/nvim-spectre",
   {
      "nvim-pack/nvim-spectre",
      init = function()
      local spectre = require('spectre')
      spectre.setup()
       end
   }
}
