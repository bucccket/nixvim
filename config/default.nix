{
  # Import all your configuration modules here
  imports = [
    ./autosave.nix
    ./bufferline.nix
    ./cmp.nix
    ./git.nix
    ./lsp.nix
    ./lualine.nix
    ./none-ls.nix
    ./nvim-tree.nix
    ./opts.nix
    ./telescope.nix
    ./treesitter.nix
    ./toggleterm.nix
    ./vim-nix.nix
    ./which-key.nix
    ./wilder.nix
  ];

  colorschemes.gruvbox.enable = true;

  globals.mapleader = " ";

  keymaps = [
    {
      # Toggle NvimTree
      key = "<C-n>";
      action = "<CMD>NvimTreeToggle<CR>";
      options = { desc = "Open File Tree"; };
    }
    {
      # Open Term
      key = "<leader>v";
      action = "<CMD>ToggleTerm direction=vertical<CR>";
      options = { desc = "Open Vertical Term"; };
    }
    {
      # Open Term
      key = "<leader>h";
      action = "<CMD>ToggleTerm direction=horizontal<CR>";
      options = { desc = "Open Vertical Term"; };
    }
    {
      # Format file
      key = "<leader>fm";
      action = "<CMD>lua vim.lsp.buf.format()<CR>";
      options = { desc = "Format File"; };
    }
  ];

}
