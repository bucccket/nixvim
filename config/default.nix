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
    ./refactoring.nix
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
  
  config.opts = {

    updatetime = 100; # Faster completion

    number = true;
    relativenumber = true;

    autoindent = true;
    clipboard = "unnamedplus";
    expandtab = true;
    shiftwidth = 2;
    tabstop = 2;

    ignorecase = true;
    incsearch = true;
    smartcase = true;
    wildmode = "list:longest";

    undofile = true; # Built-in persistent undo
  };

  extraPlugins = with pkgs.vimPlugins; [
    haskell-tools-nvim
    haskell-vim
    nvim-treesitter-parsers.haskell
  ];

  colorschemes.gruvbox.enable = true;

  globals.mapleader = " ";

}
