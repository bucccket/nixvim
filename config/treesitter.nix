{
  plugins = {
    treesitter = {
      enable = true;
      nixGrammars = true;
      folding = true;
      nixvimInjections = true;
      settings = {
        indent.enable = true;
        highlight.enable = true;
        auto_install = true;
        ensure_installed =
          [
            "c"
            "cpp"
            "java"
            "nix"
            "javascript"
            "typescript"
            "html"
            "css"
            "git_config" 
            "git_rebase" 
            "gitattributes" 
            "gitcommit" 
            "gitignore" 
          ];
      };
    };
    treesitter-context.enable = true;
    treesitter-refactor.enable = true;
    rainbow-delimiters.enable = true;
  };
}
