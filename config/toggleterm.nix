{
  plugins.toggleterm = {
    enable = true;
    settings = {
      auto_scroll = true;
      close_on_exit = true;
      direction = "vertical";
      hide_numbers = true;
      start_in_insert = true;
      size = ''
        function(term)
            if term.direction == "horizontal" then
              return 15
            elseif term.direction == "vertical" then
              return vim.o.columns * 0.4
            end
          end
      '';
    };
  };
}
