{
  plugins.noice = {
    enable = true;
    settings = {
      lsp = {
        hover.enabled = true;
        signature.enabled = true;
        documentation.view = "hover";
      };
      presets = {
        bottom_search = true;
        command_palette = true;
        long_message_to_split = true;
        lsp_doc_border = true;
      };
    };
  };
}
