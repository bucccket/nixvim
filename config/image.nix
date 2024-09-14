{
  plugins.image = {
    enable = true;
    backend = "ueberzug";
    hijackFilePatterns = [ "*.svg" "*.png" "*.jpg" "*.jpeg" "*.gif" "*.webp" ];
    integrations = { markdown.enabled = true; };
  };
}
