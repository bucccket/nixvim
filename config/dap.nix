{
  plugins = {
    dap = {
      enable = true;
      adapters = { };
      configurations = { };
      signs = {
        dapBreakpoint = {
          text = "●";
          texthl = "DapBreakpoint";
        };
        dapBreakpointCondition = {
          text = "●";
          texthl = "DapBreakpointCondition";
        };
        dapLogPoint = {
          text = "◆";
          texthl = "DapLogPoint";
        };
      };
    };

    dap-ui.enable = true;
    dap-virtual-text.enable = true;
    dap-python.enable = true;
  };
  extraConfigLua = ''
    local dap = require("dap")
    dap.adapters.gdb = {
        type = "executable",
        command = "gdb",
        args = { "-i", "dap" }
    }
    local dap = require("dap")
    dap.configurations.c = {
    {
      name = "Launch",
      type = "gdb",
      request = "launch",
      program = function()
      	return vim.fn.input('Path of the executable: ', vim.fn.getcwd() .. '/', 'file')
      end,
      cwd = "''${workspaceFolder}",
    },
    }
    local dap = require("dap")
    dap.configurations.cpp = {
    {
      name = "Launch",
      type = "gdb",
      request = "launch",
      program = function()
      	return vim.fn.input('Path of the executable: ', vim.fn.getcwd() .. '/', 'file')
      end,
      cwd = "''${workspaceFolder}",
    },
    }
  '';
}
