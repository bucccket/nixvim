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
        ktlint.enable = true;
        mypy.enable = true;
        pydoclint.enable = true;
        semgrep.enable = true;
        statix.enable = true;
        stylelint.enable = true;
        tidy.enable = true;
        yamllint.enable = true;
      };
      formatting = {
        clang_format.enable = true;
        isort.enable = true;
        ktlint.enable = true;
        markdownlint.enable = true;
        nixfmt.enable = true;
        prettierd = {
          enable = true;
          disableTsServerFormatter = true;
        };
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
