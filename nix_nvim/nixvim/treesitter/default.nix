{ pkgs, config, ... }:
{
  plugins.treesitter = { 
    enable = true;
    settings = {
        highlight = {
          enable = true;
        };
      };
      grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
        python
        r
        markdown
        markdown_inline
        nu
        lua
        nix
        bash
      ];
  };
}
