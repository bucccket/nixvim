{
  plugins = {
    treesitter = {
      enable = true;
      nixGrammars = true;
      nixvimInjections = true;
      settings = {
        indent.enable = true;
        highlight.enable = true;
        auto_install = true;
      };
    };
    treesitter-context.enable = true;
    treesitter-refactor.enable = true;
    rainbow-delimiters.enable = true;
  };
}
