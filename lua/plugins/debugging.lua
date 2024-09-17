return {
	{
		"mfussenegger/nvim-dap",
		-- Breakpoints and Debug Adapters
		dependencies = {
			"rcarriga/nvim-dap-ui",
			"nvim-neotest/nvim-nio",
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")

			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end

			dap.adapters.gdb = {
				type = "executable",
				command = "gdb",
				args = { "--interpreter=dap", "--eval-command", "set print pretty on" },
			}

			vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, { desc = "Toggle Breakpoint" })
			vim.keymap.set("n", "<Leader>dx", dap.terminate, { desc = "Terminate Debug Session" })
			vim.keymap.set("n", "<Leader>dc", dap.continue, { desc = "Continue Debug Session" })
			vim.keymap.set("n", "<Leader>dC", dap.run_to_cursor, { desc = "Run to Cursor" })
			vim.keymap.set("n", "<Leader>dn", dap.step_over, { desc = "Step Over" })
			vim.keymap.set("n", "<Leader>di", dap.step_into, { desc = "Step Into" })
			vim.keymap.set("n", "<Leader>do", dap.step_out, { desc = "Step Out" })
		end,
	},
}
