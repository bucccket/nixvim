{
	plugins.lsp={
		enable=true;
		servers={
			bashls.enable=true;
			clangd.enable=true;
			hls.enable=true;
			lua-ls.enable=true;
			nixd.enable=true;
		};
		keymaps.lspBuf = {
			"gd" = "definition";
			"gD" = "references";
			"gt" = "type_definition";
			"gi" = "implementation";
			"K" = "hover";
		};
	};
}
