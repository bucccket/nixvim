{
  plugins.none-ls = {
    enable = true;
    sources = {
      code_actions = {
        gitrebase.enable = true;
        gitsigns.enable = true;
        proselint.enable = true;
        refactoring.enable = true;
        statix.enable = true;
      };
      diagnostics = {
        cppcheck.enable = true;
        mypy.enable = true;
        statix.enable = true;
        tidy.enable = true;
        yamllint.enable = true;
      };
      formatting = {
        clang_format.enable = true;
        isort.enable = true;
        markdownlint.enable = true;
        nixfmt.enable = true;
        prettierd.enable = true;
        shellharden.enable = true;
        shfmt.enable = true;
        xmllint = {
          enable = true;
          settings = { extra_filetypes = [ "svg" ]; };
        };
        yapf.enable = true;
      };
      hover = {
        dictionary.enable = true;
        printenv.enable = true;
      };
    };
  };
}
