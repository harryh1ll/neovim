require("config.lazy")
vim.wo.number = true
vim.opt.colorcolumn = "100"
vim.g.python3_host_prog = '/Users/harryhill/.pyenv/shims/python'


local function set_tab_width(filetype, tabstop, shiftwidth, expandtab)
  vim.api.nvim_create_autocmd("FileType", {
    pattern = filetype,
    callback = function()
      vim.opt_local.tabstop = tabstop
      vim.opt_local.shiftwidth = shiftwidth
      vim.opt_local.expandtab = expandtab -- true for spaces, false for tabs
    end,
  })
end


set_tab_width("python", 4, 4, true)
set_tab_width("c", 2, 2, true)
set_tab_width("rust", 4, 4, true)

