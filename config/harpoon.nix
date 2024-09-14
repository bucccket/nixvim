{
  plugins.harpoon = {
    enable = true;
    enableTelescope = true;
    keymaps = {
      addFile = "<leader>hm";
      navNext = "<leader>hn";
      navPrev = "<leader>hp";
      gotoTerminal = {
        "1" = "<C-j>";
        "2" = "<C-k>";
        "3" = "<C-l>";
        "4" = "<C-m>";
      };
      toggleQuickMenu = "<leader>hq";
      cmdToggleQuickMenu = "<leader>hc";
    };
  };
}
