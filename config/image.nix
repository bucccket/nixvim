{
  plugins.image = {
    enable = true;
    settings = {
      backend = "kitty";
      hijackFilePatterns =
        [ "*.svg" "*.png" "*.jpg" "*.jpeg" "*.gif" "*.webp" ];
      integrations = { markdown.enabled = true; };
    };
  };
}
