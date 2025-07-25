{
plugins.lualine = {
  enable = true;
  settings = {
    options = {
      component_separators = { left = ""; right = ""; };
      section_separators = { left = ""; right = ""; };
      disabled_filetypes = [ "NvimTree" ];
    };
    sections = {
      lualine_a = [ "mode" ];
      lualine_b = [ "branch" ];
      lualine_c = [ "filename" ];
      lualine_x = [ "filetype" ];
      lualine_y = [ "progress" ];
      lualine_z = [ "location" ];
    };
  };
};
}
