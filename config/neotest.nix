{
  plugins.neotest = {
    enable = true;
    adapters = {
      ctest.enable = true;
      deno.enable = true;
      haskell.enable = true;
      jest.enable = true;
      python.enable = true;
      rust.enable = true;
    };
  };
}
