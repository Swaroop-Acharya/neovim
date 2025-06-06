return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "theHamsta/nvim-dap-virtual-text",
      "nvim-neotest/nvim-nio", -- ⬅️ Add this line
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      dapui.setup()
      require("nvim-dap-virtual-text").setup()

      vim.keymap.set("n", "<F5>", dap.continue)
      vim.keymap.set("n", "<F10>", dap.step_over)
      vim.keymap.set("n", "<F11>", dap.step_into)
      vim.keymap.set("n", "<Leader>p", dap.toggle_breakpoint)
      vim.keymap.set("n", "<Leader>du", dapui.toggle)

      dap.adapters.java = {
        type = "server",
        host = "127.0.0.1",
        port = 5005,
      }

      dap.configurations.java = {
        {
          type = "java",
          request = "attach",
          name = "Attach to Java App",
          hostName = "127.0.0.1",
          port = 5005,
        },
      }
    end,
  },
}
