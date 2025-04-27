{
  config = {
    opts = {

      updatetime = 100; # Faster completion

      number = true;
      relativenumber = true;

      autoindent = true;
      clipboard = "unnamedplus";
      expandtab = true;
      shiftwidth = 2;
      tabstop = 2;

      ignorecase = true;
      incsearch = true;
      smartcase = true;
      wildmode = "list:longest";

      undofile = true; # Built-in persistent undo

      mouse = "a"; # Mouse

      cursorline = true; # Highlight the line where the cursor is located
      completeopt = [ "menuone" "noselect" "noinsert" ]; # mostly just for cmp
      # Always keep 8 lines above/below cursor unless at start/end of file
      scrolloff = 5;
    };

    # https://github.com/Neve-Project/nevica/blob/main/modules/nixvim/performance.nix
    performance.byteCompileLua = {
        enable = true;
        configs = true;
        initLua = true;
        nvimRuntime = true;
        plugins = true;
      };
  };
}
