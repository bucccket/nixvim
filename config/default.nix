{ pkgs, ... }:

{
  # Import all your configuration modules here
  imports = [
    ./actions-preview.nix
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
    #./lsp-lines.nix
    ./lsp.nix
    ./lspsaga.nix
    ./lualine.nix
    ./neotest.nix
    #./noice.nix
    ./none-ls.nix
    ./nvim-tree.nix
    ./options.nix
    ./refactoring.nix
    ./smear-cursor.nix
    ./tagbar.nix
    ./telescope.nix
    ./tmux-navigator.nix
    ./todo-comments.nix
    ./toggleterm.nix
    ./treesitter.nix
    ./trouble.nix
    ./typescript-tools.nix
    ./vim-nix.nix
    #./vimtex.nix
    ./web-devicons.nix
    ./which-key.nix
    #./wilder.nix
  ];

  extraPlugins = with pkgs.vimPlugins; [
    haskell-tools-nvim
    haskell-vim
    nvim-treesitter-parsers.haskell
  ];

  extraPackages = with pkgs; [
    gcc
    typescript
  ];

  colorschemes.gruvbox.enable = true;

  globals.mapleader = " ";

}
