{ pkgs, ... }:

{
  # Import all your configuration modules here
  imports = [
    ./autosave.nix
    ./bufdelete.nix
    ./bufferline.nix
    ./cmp.nix
    ./colorizer.nix
    ./diffview.nix
    ./emmet.nix
    ./fastaction.nix
    ./git.nix
    ./image.nix
    ./keymaps.nix
    ./lsp.nix
    ./lualine.nix
    ./none-ls.nix
    ./nvim-tree.nix
    ./opts.nix
    ./telescope.nix
    ./toggleterm.nix
    ./treesitter.nix
    ./trouble.nix
    ./vim-nix.nix
    ./vimtex.nix
    ./web-devicons.nix
    ./which-key.nix
    ./wilder.nix
  ];

  extraPlugins = with pkgs.vimPlugins; [
    haskell-tools-nvim
    haskell-vim
    nvim-treesitter-parsers.haskell
  ];

  colorschemes.gruvbox.enable = true;

  globals.mapleader = " ";

}
