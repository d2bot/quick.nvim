local telescope = require("telescope")

telescope.setup{
  defaults = {
    mappings = {
      n = {
    	  ['<C-D>'] = require('telescope.actions').delete_buffer
      }
    }
  },
  pickers = {
    find_files = {
      theme = "ivy",
    }
  }
}

vim.api.nvim_set_keymap('n', '<C-P>', "<cmd>lua require('telescope.builtin').find_files()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-F>', "<cmd>lua require('telescope.builtin').live_grep()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-B>', "<cmd>lua require('telescope.builtin').buffers({ignore_current_buffer = true})<CR>", { noremap = true })
