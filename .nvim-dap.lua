local dap = require("dap")

codelldb_path = vim.fn.stdpath("data") .. "/mason/packages/codelldb/extension/adapter/codelldb"
dap.adapters.lldb = {
    type = "server",
    port = "${port}",
    executable = {
        command = codelldb_path,
        args = { "--port", "${port}" },
        detached = false,
    }
}

dap.configurations.rust = {
    {
        name = "factorial",
        type = "lldb",
        request = "launch",
        program = function()
            return vim.fn.getcwd() .. "/target/debug/rustecho"
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
    },
}
