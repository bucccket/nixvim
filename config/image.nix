{
  plugins.image = {
    enable = true;
    backend = "kitty";
    hijackFilePatterns = [ "*.svg" "*.png" "*.jpg" "*.jpeg" "*.gif" "*.webp" ];
    integrations = { markdown.enabled = true; };
  };
}
