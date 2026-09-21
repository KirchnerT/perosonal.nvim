-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {},
    config = function(_, opts)
      require('toggleterm').setup(opts)

      local Terminal = require('toggleterm.terminal').Terminal
      local cebes_bot = Terminal:new {
        cmd = 'dotnet run --project Cebes.csproj',
        dir = vim.fn.expand '~/Discord-Bot/Cebes',
        direction = 'horizontal',
        close_on_exit = false,
      }

      vim.keymap.set('n', '<leader>rb', function()
        cebes_bot:toggle()
      end, { desc = '[R]un Cebes [B]ot' })
    end,
  },
}
