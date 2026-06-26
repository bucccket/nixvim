{
  plugins.typescript-tools = {
    enable = true;
    settings.settings = {
      expose_as_code_action = "all";
      tsserver_file_preferences = {
        includeInlayParameterNameHints = "all";
        includeInlayParameterNameHintsWhenArgumentMatchesName = false;
        includeInlayFunctionParameterTypeHints = true;
        includeInlayVariableTypeHints = true;
        includeInlayPropertyDeclarationTypeHints = true;
        includeInlayFunctionLikeReturnTypeHints = true;
        includeInlayEnumMemberValueHints = true;
        includeCompletionsForModuleExports = true;
        quotePreference = "auto";
      };
    };
  };
}
