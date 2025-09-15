{ pkgs, ... }:

{
  # Import all your configuration modules here
  imports = [
    ./autopairs.nix
    ./autosave.nix
    ./bufdelete.nix
    ./bufferline.nix
    ./claude.nix
    ./cmp.nix
    ./colorizer.nix
    ./dap.nix
    ./diffview.nix
    ./emmet.nix
    ./fastaction.nix
    ./fidget.nix
    ./git.nix
    ./image.nix
    ./keymaps.nix
    ./lsp.nix
    ./lualine.nix
    ./none-ls.nix
    ./nvim-tree.nix
    ./options.nix
    ./refactoring.nix
    # ./rustaceanvim.nix
    ./smear-cursor.nix
    # ./startpage.nix
    ./tagbar.nix
    ./telescope.nix
    ./tmux-navigator.nix
    ./todo-comments.nix
    ./toggleterm.nix
    ./treesitter.nix
    ./trouble.nix
    ./typescript-tools.nix
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

  extraPackages = with pkgs; [ gcc ];

  colorschemes.gruvbox.enable = true;

  globals.mapleader = " ";

}
