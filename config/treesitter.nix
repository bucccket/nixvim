{
  plugins = {
    treesitter = {
      enable = true;
      nixGrammars = true;
      settings = { indent.enable = true; };
    };
    treesitter-refactor.enable = true;
    rainbow-delimiters.enable = true;
  };
}
