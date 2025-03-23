{
  plugins.emmet = {
    enable = true;
    settings = {
      mode = "inv";
      settings = {
        html = {
          default_attributes = {
            option = { value = null; };
            textarea = {
              cols = 10;
              id = null;
              name = null;
              rows = 10;
            };
          };
          snippets = {
            "html:5" = ''
              <!DOCTYPE html>
              <html lang=\"$\{lang}\">
              <head>
              \t<meta charset=\"$\{charset}\">
              \t<title></title>
              \t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
              </head>
              <body>\n\t$\{child}|\n</body>
              </html>
            '';
          };
        };
        variables = { lang = "ja"; };
      };
    };
  };
}
