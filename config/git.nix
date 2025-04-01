{
  plugins.gitsigns = {
    enable = true;
    settings.current_line_blame = true;
  };
  plugins.git-conflict = {
    enable = true;
    settings = {
      default_commands = true;
      highlights = {
        current = "DiffText";
        incoming = "DiffAdd";
      };
      list_opener = "copen";
    };
  };
}
