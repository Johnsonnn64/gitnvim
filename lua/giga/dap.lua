local dap, dapui = require("dap"), require("dapui")
dapui.setup()

dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end
-- dap.listeners.before.event_terminated.dapui_config = function()
--   dapui.close()
-- end
-- dap.listeners.before.event_exited.dapui_config = function()
--   dapui.close()
-- end

vim.keymap.set("n", "<Leader>Db", dap.toggle_breakpoint, {noremap = true, silent = true})
vim.keymap.set("n", "<Leader>Dc", dap.continue, {noremap = true, silent = true})
vim.keymap.set("n", "<Leader>Dl", dap.step_into, {noremap = true, silent = true})
vim.keymap.set("n", "<Leader>DD", dapui.open)
vim.keymap.set("n", "<Leader>Dq", dapui.close)

require("nvim-dap-virtual-text").setup()
