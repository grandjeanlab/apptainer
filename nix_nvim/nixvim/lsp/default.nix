{ config, pkgs, ... }:
{
  plugins.lsp = {
    enable = true;

    servers =  {
      pyright.enable = true;
      nixd.enable = true;
      nushell.enable = true;
      dockerls.enable = true;
      docker_compose_language_service.enable = true;
      bashls.enable = true;
    };

  };
  extraConfigLua = ''
    require'lspconfig'.r_language_server.setup{
        filetypes = { "r", "qmd", "rmd" },
        cmd = { "R", "--slave", "-e", "languageserver::run()" },
      }
    '';
}
