{
  keymaps = [
    {
      key = "<S-Esc>";
      action = "<C-\\><C-n>";
      mode = "t";
      options = {
        noremap = true;
        desc = "Escape terminal";
      };
    }
    {
      #Auto Action
      key = "<C-space>";
      action = "<cmd>lua require('fastaction').code_action()<CR>";
      options = { desc = "Auto Actions"; };
    }
    {
      # Go To Next Tab 
      key = "<Tab>";
      action = "<CMD>BufferLineCycleNext<CR>";
      options = { desc = "Go To Next Tab"; };
    }
    {
      # Go To Prev Tab 
      key = "<S-Tab>";
      action = "<CMD>BufferLineCyclePrev<CR>";
      options = { desc = "Go To Prev Tab"; };
    }

    {
      # Fold
      key = "<C-F>";
      action = "<CMD>foldopen<CR>";
      options = { desc = "Fold Code"; };
    }
    {
      # Unfold 
      key = "<C-S-F>";
      action = "<CMD>foldclose<CR>";
      options = { desc = "Unfold Code"; };
    }

    {
      # Toggle Tab Pin 
      key = "<leader>bp";
      action = "<CMD>BufferLineTogglePin<CR>";
      options = { desc = "Toggle Tab Pin "; };
    }
    {
      # Close Tab 
      key = "<leader>x";
      action = "<CMD>Bdelete<CR><CMD>BufferLineGoToBuffer 9999<CR>";
      options = { desc = "Close Tab"; };
    }
    {
      # Toggle NvimTree
      key = "<C-n>";
      action = "<CMD>NvimTreeToggle<CR>";
      options = { desc = "Open File Tree"; };
    }
    {
      # Open Vertical Term
      key = "<leader>tv";
      action = "<CMD>ToggleTerm direction=vertical<CR>";
      options = { desc = "Open Vertical Term"; };
    }
    {
      # Open Horizontal Term
      key = "<leader>th";
      action = "<CMD>ToggleTerm direction=horizontal<CR>";
      options = { desc = "Open Horizontal Term"; };
    }
    {
      # Open Floating Term
      key = "<leader>tf";
      action = "<CMD>ToggleTerm direction=float<CR>";
      options = { desc = "Open Floating Term"; };
    }
    {
      # Format file
      key = "<leader>fm";
      action = "<CMD>lua vim.lsp.buf.format()<CR>";
      options = { desc = "Format File"; };
    }
    {
      # Find File
      key = "<leader>ff";
      action = "<CMD>Telescope find_files<CR>";
      options = { desc = "Fuzzy Find File (Telescope find_file)"; };
    }
    {
      # Fuzzy Finder
      key = "<leader>fc";
      action = "<CMD>Telescope<CR>";
      options = { desc = "Fuzzy Find (Telescope)"; };
    }
    {
      # Open Diagnostics
      key = "<leader>dd";
      action = "<CMD>Trouble diagnostics toggle<CR>";
      options = { desc = "Trouble Diagnostics"; };
    }
    {
      # Open Symbols
      key = "<leader>ds";
      action = "<CMD>Trouble symbols toggle<CR>";
      options = { desc = "Trouble Symbols"; };
    }
    {
      # Open LSP
      key = "<leader>dl";
      action = "<CMD>Trouble lsp toggle<CR>";
      options = { desc = "Trouble LSP Info toggle"; };
    }
    {
      # Git Conflict Ours
      key = "<leader>ch";
      action = "<CMD>GitConflictChooseOurs<CR>";
      options = { desc = "Git Conflict Choose OURS"; };
    }
    {
      # Git Conflict Theirs
      key = "<leader>cl";
      action = "<CMD>GitConflictChooseTheirs<CR>";
      options = { desc = "Git Conflict Choose Theirs"; };
    }
    {
      # Git Conflict Both
      key = "<leader>cb";
      action = "<CMD>GitConflictChooseBoth<CR>";
      options = { desc = "Git Conflict Choose BOTH"; };
    }
    {
      # Git Conflict None
      key = "<leader>cn";
      action = "<CMD>GitConflictChooseNone<CR>";
      options = { desc = "Git Conflict Choose NONE"; };
    }
    {
      # Git Next Conflict 
      key = "<leader>cj";
      action = "<CMD>GitConflictNextConflict<CR>";
      options = { desc = "Git Next Conflict"; };
    }
    {
      # Git Previous Conflict
      key = "<leader>ck";
      action = "<CMD>GitConflictPrevConflict<CR>";
      options = { desc = "Git Previous Conflict"; };
    }
    {
      # Toggle Claude Code
      key = "<leader>cc";
      action = "<CMD>ClaudeCode<CR>";
      options = { desc = "Toggle Claude Code"; };
    }
    {
      # LSP Rename
      key = "<leader>rn";
      action = "<CMD>lua vim.lsp.buf.rename()<CR>";
      options = { desc = "Rename"; };
    }
    {
      # Extract
      key = "<leader>re";
      action = "<CMD>Refactor extract<CR>";
      mode = "x";
      options = { desc = "Extract"; };
    }
    {
      # Extract To File
      key = "<leader>rf";
      action = "<CMD>Refactor extract_to_file<CR>";
      mode = "x";
      options = { desc = "Extract To File"; };
    }
    {
      # Extract Variable
      key = "<leader>rv";
      action = "<CMD>Refactor extract_var<CR>";
      mode = "x";
      options = { desc = "Extract Variable"; };
    }
    {
      # Inline Variable
      key = "<leader>ri";
      action = "<CMD>Refactor inline_var<CR>";
      mode = [ "n" "x" ];
      options = { desc = "Inline Variable"; };
    }
    {
      # Inline Function
      key = "<leader>rI";
      action = "<CMD>Refactor inline_func<CR>";
      mode = "n";
      options = { desc = "Inline Function"; };
    }
    {
      # Extract Block
      key = "<leader>rb";
      action = "<CMD>Refactor extract_block<CR>";
      mode = "n";
      options = { desc = "Extract Block"; };
    }
    {
      # Extract Block To File
      key = "<leader>rB";
      action = "<CMD>Refactor extract_block_to_file<CR>";
      mode = "n";
      options = { desc = "Extract Block To File"; };
    }
    {
      # Run nearest test
      key = "<leader>ut";
      action = "<CMD>lua require('neotest').run.run()<CR>";
      mode = "n";
      options = { desc = "Run nearest test"; };
    }
    {
      # Run current file tests
      key = "<leader>uf";
      action = "<CMD>lua require('neotest').run.run(vim.fn.expand('%'))<CR>";
      mode = "n";
      options = { desc = "Run current file tests"; };
    }
    {
      # Debug nearest test
      key = "<leader>ud";
      action = "<CMD>lua require('neotest').run.run({strategy = 'dap'})<CR>";
      mode = "n";
      options = { desc = "Debug nearest test"; };
    }
    {
      # Attach to nearest test
      key = "<leader>ua";
      action = "<CMD>lua require('neotest').run.attach()<CR>";
      mode = "n";
      options = { desc = "Attach to nearest test"; };
    }
    {
      # Open Diff View
      key = "<leader>gd";
      action = "<CMD>DiffviewOpen<CR>";
      options = { desc = "Diffview Open"; };
    }
    {
      # Close Diff View
      key = "<leader>gD";
      action = "<CMD>DiffviewClose<CR>";
      options = { desc = "Diffview Close"; };
    }
    {
      # View File History
      key = "<leader>gf";
      action = "<CMD>DiffviewFileHistory<CR>";
      options = { desc = "View File History"; };
    }
    # https://github.com/Neve-Project/nevica/blob/main/modules/mappings/debugger-keymaps.nix
    {
      # Breakpoint with condition
      mode = "n";
      key = "<leader>dB";
      action =
        "\n        <cmd>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>\n      ";
      options = {
        silent = true;
        desc = "Breakpoint Condition";
      };
    }
    {
      # Toggle Breakpoint
      mode = "n";
      key = "<leader>db";
      action = ":DapToggleBreakpoint<cr>";
      options = {
        silent = true;
        desc = "Toggle Breakpoint";
      };
    }
    {
      # DBG Continue
      mode = "n";
      key = "<leader>dc";
      action = ":DapContinue<cr>";
      options = {
        silent = true;
        desc = "Debug Continue";
      };
    }
    {
      # Run Debugger with Args
      mode = "n";
      key = "<leader>da";
      action = "<cmd>lua require('dap').continue({ before = get_args })<cr>";
      options = {
        silent = true;
        desc = "Run with Args";
      };
    }
    {
      # DBG Run to Cursor
      mode = "n";
      key = "<leader>dC";
      action = "<cmd>lua require('dap').run_to_cursor()<cr>";
      options = {
        silent = true;
        desc = "Run to cursor";
      };
    }
    {
      # DBG Goto (No Execute)
      mode = "n";
      key = "<leader>dg";
      action = "<cmd>lua require('dap').goto_()<cr>";
      options = {
        silent = true;
        desc = "Go to line (no execute)";
      };
    }
    {
      # DBG step into
      mode = "n";
      key = "<leader>di";
      action = ":DapStepInto<cr>";
      options = {
        silent = true;
        desc = "Step into";
      };
    }
    {
      # DBG down
      mode = "n";
      key = "<leader>dj";
      action = "\n        <cmd>lua require('dap').down()<cr>\n      ";
      options = {
        silent = true;
        desc = "Debug Down";
      };
    }
    {
      # DBG up
      mode = "n";
      key = "<leader>dk";
      action = "<cmd>lua require('dap').up()<cr>";
      options = {
        silent = true;
        desc = "Debug Up";
      };
    }
    {
      # DBG run last debug target
      mode = "n";
      key = "<leader>dl";
      action = "<cmd>lua require('dap').run_last()<cr>";
      options = {
        silent = true;
        desc = "Run Last";
      };
    }
    {
      # DBG step out
      mode = "n";
      key = "<leader>do";
      action = ":DapStepOut<cr>";
      options = {
        silent = true;
        desc = "Step Out";
      };
    }
    {
      # DBG step over
      mode = "n";
      key = "<leader>dO";
      action = ":DapStepOver<cr>";
      options = {
        silent = true;
        desc = "Step Over";
      };
    }
    {
      # DBG halt
      mode = "n";
      key = "<leader>dp";
      action = "<cmd>lua require('dap').pause()<cr>";
      options = {
        silent = true;
        desc = "Debug Pause";
      };
    }
    {
      # DBG toggle REPL
      mode = "n";
      key = "<leader>dr";
      action = ":DapToggleRepl<cr>";
      options = {
        silent = true;
        desc = "Toggle REPL";
      };
    }
    {
      # DBG session
      mode = "n";
      key = "<leader>ds";
      action = "<cmd>lua require('dap').session()<cr>";
      options = {
        silent = true;
        desc = "Debug Session";
      };
    }
    {
      # DBG terminate
      mode = "n";
      key = "<leader>dt";
      action = ":DapTerminate<cr>";
      options = {
        silent = true;
        desc = "Debug Terminate";
      };
    }
    {
      # DBG enable DAP-UI
      mode = "n";
      key = "<leader>du";
      action = "<cmd>lua require('dapui').toggle()<cr>";
      options = {
        silent = true;
        desc = "Debug UI";
      };
    }
    {
      # DBG enable DAP-UI widgets
      mode = "n";
      key = "<leader>dw";
      action = "<cmd>lua require('dap.ui.widgets').hover()<cr>";
      options = {
        silent = true;
        desc = "Debug Widgets";
      };
    }
    {
      # DBG evaluate section
      mode = [ "n" "v" ];
      key = "<leader>de";
      action = "<cmd>lua require('dapui').eval()<cr>";
      options = {
        silent = true;
        desc = "Debug Eval";
      };
    }
  ];
}
