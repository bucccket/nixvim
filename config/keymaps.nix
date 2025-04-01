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
      #Auto action
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
      options = { desc = "Fold code"; };
    }
    {
      # Unfold 
      key = "<C-S-F>";
      action = "<CMD>foldclose<CR>";
      options = { desc = "Unfold code"; };
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
      action = "<CMD>Trouble diagnostics<CR>";
      options = { desc = "Trouble Diagnostics"; };
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
  ];
}
