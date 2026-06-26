{
  plugins.lspsaga = {
    enable = true;
    settings = {
      ui.border = "rounded";
      hover = {
        max_width = 0.8;
        max_height = 0.8;
        open_link = "gx";
      };
      code_action = {
        extend_gitsigns = true;
        show_server_name = true;
      };
      lightbulb.enable = true;
      symbol_in_winbar.enable = true;
    };
  };
}
