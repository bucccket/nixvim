{
  plugins.none-ls = {
    enable = true;
    sources = {
      code_actions = {
        gitrebase.enable = true;
        gitsigns.enable = true;
        refactoring.enable = true;
        statix.enable = true;
      };
      diagnostics = {
        cppcheck.enable = true;
        mypy.enable = true;
        pylint.enable = true;
        statix.enable = true;
      };
      formatting = {
        clang_format.enable = true;
        isort.enable = true;
        markdownlint.enable = true;
        nixfmt.enable = true;
        shellharden.enable = true;
        shfmt.enable = true;
        yapf.enable = true;
      };
      hover = {
        dictionary.enable = true;
        printenv.enable = true;
      };
    };
  };
}
