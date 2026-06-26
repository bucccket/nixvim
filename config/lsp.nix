{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        bashls.enable = true;
        clangd.enable = true;
        cssls.enable = true;
        elmls.enable = true;
        eslint.enable = true;
        html.enable = true;
        jedi_language_server.enable = true;
        kotlin_language_server.enable = true;
        lua_ls.enable = true;
        nixd.enable = true;
        pyright.enable = true;
        ruff.enable = true;
        rust_analyzer= {
          enable = true;
          installCargo = false;
          installRustc = false;
        };
        tailwindcss.enable = true;
        ts_ls.enable = false;
      };
      keymaps.lspBuf = {
        "gd" = "definition";
        "gD" = "references";
        "gt" = "type_definition";
        "gi" = "implementation";
      };
      keymaps.extra = [
        {
          key = "K";
          action = "<CMD>Lspsaga hover_doc<CR>";
        }
        {
          key = "<leader>ca";
          action = "<CMD>lua require('actions-preview').code_actions()<CR>";
        }
        {
          key = "<leader>la";
          action = "<CMD>Lspsaga code_action<CR>";
        }
      ];
    };
    lsp-format = { lspServersToEnable = [ "nixd" ]; };
  };
}
