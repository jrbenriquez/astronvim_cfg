-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>s"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], desc = "Replace in file" }, -- from thePrimeagen
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    ["tl"] ={ function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc = "Next buffer" },
    ["th"] = { function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end, desc = "Previous buffer"},
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    --
    ["<leader>fz"] = { function() require("telescope.builtin").tags() end, desc = "Find tags" },
    ["nl"] = { "i<CR><ESC>", desc = "Break current line where the cursor is"},
    ["nL"] = { "i<CR><ESC>O", desc = "Break current line where the cursor is and insert newline"},
    ["gd"] = { "<C-]>", desc = "Go to Tag definition"},
    ['<leader>dd'] = { "<cmd>Telescope diagnostics<CR>", desc = "Workspace Diagnostics" },
    ["<leader>gs"] = { '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', desc = "Search current word"},
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    ["J"] = {":m '>+1<CR>gv=gv", desc = "Move highlighted down"},
    ["K"] = {":m '<-2<CR>gv=gv", desc = "Move highlighted up"},
    ["<leader>gs"] = { '<esc><cmd>lua require("spectre").open_visual()<CR>', desc = "Search current word"},
  }
}
