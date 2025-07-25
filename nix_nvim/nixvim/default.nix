{pkgs, ...}: {
  imports = [
    ./alpha
    ./cmp
    ./colorscheme
    ./copilot
    ./indent
    ./lsp
    ./lspkind
    ./lualine
    ./luasnip
    ./notify
    ./nvimtree
    ./quarto
    ./telescope
    ./toggleterm
    ./treesitter
    ./vimslime
    ./whichkey
    ./keymaps.nix
    ./settings.nix
  ];

#add R and rPackages.languageserver as extra packages
  extraPackages = with pkgs; [
   (rWrapper.override { packages = with pkgs.rPackages; [
    languageserver
   ]; })
  ];


}
