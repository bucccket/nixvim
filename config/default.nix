{
  # Import all your configuration modules here
  imports = [
    ./autosave.nix
    ./bufferline.nix
    ./cmp.nix
    ./colorizer.nix
    ./diffview.nix
    ./git.nix
    ./harpoon.nix
    ./image.nix
    ./lsp.nix
    ./lualine.nix
    ./none-ls.nix
    ./nvim-tree.nix
    ./opts.nix
    ./telescope.nix
    ./toggleterm.nix
    ./treesitter.nix
    ./vim-nix.nix
    ./vimtex.nix
    ./which-key.nix
    ./wilder.nix
  ];

  plugins.web-devicons.enable = true;

  colorschemes.gruvbox.enable = true;

  globals.mapleader = " ";

  keymaps = [
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
      # Toggle Tab Pin 
      key = "<leader>bp";
      action = "<CMD>BufferLineTogglePin<CR>";
      options = { desc = "Toggle Tab Pin "; };
    }
    {
      # Close Tab 
      key = "<leader>x";
      action = "<CMD>bdelete<CR><CMD>BufferLineGoToBuffer 9999<CR>";
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
  ];

}
