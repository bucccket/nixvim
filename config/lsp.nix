{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        bashls.enable = true;
        clangd.enable = true;
        cssls.enable = true;
        html.enable = true;
        htmx.enable = true;
        jedi_language_server.enable = true;
        kotlin_language_server.enable = true;
        lua_ls.enable = true;
        nixd.enable = true;
        pyright.enable = true;
        ruff.enable = true;
        tailwindcss.enable = true;
        ts_ls.enable = true;
      };
      keymaps.lspBuf = {
        "gd" = "definition";
        "gD" = "references";
        "gt" = "type_definition";
        "gi" = "implementation";
        "K" = "hover";
      };
    };
    lsp-format = { lspServersToEnable = [ "nixd" ]; };
  };
}
