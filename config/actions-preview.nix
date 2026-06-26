{
  plugins.actions-preview = {
    enable = true;
    settings = {
      telescope = {
        sorting_strategy = "ascending";
        layout_strategy = "vertical";
        layout_config = {
          width = 0.8;
          height = 0.9;
          prompt_position = "top";
          preview_cutoff = 20;
        };
      };
    };
  };
}
