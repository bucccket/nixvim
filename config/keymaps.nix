{
  keymaps = [

    {
      key = "<C-Esc>";
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
  ];
}
