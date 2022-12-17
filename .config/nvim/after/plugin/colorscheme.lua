vim.cmd.colorscheme("darcula")

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, 'LineNr', { ctermbg = "none" })
vim.api.nvim_set_hl(0, 'SignColumn', { ctermbg = "none" })
vim.api.nvim_set_hl(0, 'Overflow', { fg = "#ff6b68" })
vim.cmd[[ match Overflow /\%>119v.*/ ]]



