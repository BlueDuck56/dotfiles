return {

  -- ... your other plugins ...

  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
    config = function()
      -- Disable default bindings so you can set custom ones
      vim.g.codeium_disable_bindings = 1

      -- Keymaps to accept, cycle, and clear suggestions
      -- Using Ctrl+g to accept the ghost text
      vim.keymap.set('i', '<C-g>', function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
      
      -- Alt + ] and Alt + [ to cycle through suggestions
      vim.keymap.set('i', '<A-]>', function () return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
      vim.keymap.set('i', '<A-[>', function () return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
      
      -- Alt + x to clear suggestion
      vim.keymap.set('i', '<A-x>', function () return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
    end
  },

}

