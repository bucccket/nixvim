{
  plugins.dashboard = {
    enable = true;
    settings = {
      change_to_vcs_root = true;
      config = {
        mru = {
          cwd_only = false;
          limit = 12;
        };
        packages.enable = false;
        project = {
          enable = true;
          limit = 5;
        };
        shortcut = [
          {
            action = {
              __raw = "function(path) vim.cmd('Telescope find_files') end";
            };
            group = "highlight";
            desc = " Files";
            icon_hl = "@variable";
            key = "f";
          }
          {
            action = {
              __raw = "function(path) vim.cmd('Telescope live_grep') end";
            };
            desc = " Grep";
            group = "highlight";
            key = "g";
          }
          {
            action = {
              __raw = "function(path) vim.cmd('Telescope oldfiles') end";
            };
            desc = " Recents";
            group = "highlight";
            key = "r";
          }
        ];
        week_header = { enable = true; };
      };
      theme = "hyper";
    };
  };
}
