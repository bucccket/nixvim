{
  plugins.bufferline = {
    enable = true;
    settings = {
      highlights = {
        buffer_selected = { bg = "#363a4f"; };
        fill = { bg = "#1e2030"; };
        numbers_selected = { bg = "#363a4f"; };
        separator = { fg = "#1e2030"; };
        separator_selected = {
          bg = "#363a4f";
          fg = "#1e2030";
        };
        separator_visible = { fg = "#1e2030"; };
        tab_selected = { bg = "#363a4f"; };
      };
      options = {
        always_show_bufferline = true;
        buffer_close_icon = "󰅖";
        close_icon = "";
        custom_filter = ''
          function(buf_number, buf_numbers)
            -- filter out filetypes you don't want to see
            if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then
                return true
            end
            -- filter out by buffer name
            if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then
                return true
            end
            -- filter out based on arbitrary rules
            -- e.g. filter out vim wiki buffer from tabline in your work repo
            if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then
                return true
            end
            -- filter out by it's index number in list (don't show first buffer)
            if buf_numbers[1] ~= buf_number then
                return true
            end
          end
        '';
        diagnostics = "nvim_lsp";
        diagnostics_indicator = ''
          function(count, level, diagnostics_dict, context)
            local s = ""
            for e, n in pairs(diagnostics_dict) do
              local sym = e == "error" and "  "
                or (e == "warning" and "  " or "" )
              if(sym ~= "") then
                s = s .. " " .. n .. sym
              end
            end
            return s
          end
        '';
        enforce_regular_tabs = false;
        groups = {
          items = [
            {
              highlight = {
                fg = "#a6da95";
                sp = "#494d64";
                underline = true;
              };
              matcher = {
                __raw = ''
                  function(buf)
                    return buf.name:match('%test') or buf.name:match('%.spec')
                  end
                '';
              };
              name = "Tests";
              priority = 2;
            }
            {
              auto_close = false;
              highlight = {
                fg = "#ffffff";
                sp = "#494d64";
                undercurl = true;
              };
              matcher = {
                __raw = ''
                  function(buf)
                    return buf.name:match('%.md') or buf.name:match('%.txt')
                  end
                '';
              };
              name = "Docs";
            }
          ];
          options = { toggle_hidden_on_enter = true; };
        };
        indicator = {
          icon = "▎";
          style = "icon";
        };
        left_trunc_marker = " ";
        max_name_length = 18;
        max_prefix_length = 15;
        mode = "buffers";
        modified_icon = "●";
        offsets = [{
          filetype = "neo-tree";
          highlight = "Directory";
          text = "File Explorer";
          text_align = "center";
        }];
        persist_buffer_sort = true;
        right_trunc_marker = " ";
        separator_style = [ "|" "|" ];
        show_buffer_close_icons = true;
        show_buffer_icons = true;
        show_close_icon = true;
        show_tab_indicators = true;
        tab_size = 18;
      };
    };
  };
}
