{
  description = "Flake to build a neovim image with python and r packages for generic use";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      pkgs = import nixpkgs { system = "x86_64-linux"; };
    in
    {
      packages.x86_64-linux.default = pkgs.singularity-tools.buildImage {
        name = "nvim";
        contents = with pkgs; [ 
          neovim
          fzf
          fd
          lazygit
          gitMinimal
          #yazi
          #ripgrep

          #quarto

          #nodejs-slim

          #python313
          
          #python313Packages.pandas
          #python313Packages.numpy
          #python313Packages.matplotlib
          #python313Packages.scipy
          #python313Packages.seaborn
          #python313Packages.statsmodels
          #python313Packages.jupyter
          #python313Packages.pyqt5
          #python313Packages.nilearn

          #R
          #rPackages.tidyverse
          #rPackages.easystats
          #rPackages.RNifti
          #rPackages.ggdist
          #rPackages.cluster
          #rPackages.wesanderson
          #rPackages.MetBrewer
          #rPackages.glue
          #rPackages.abind
          #rPackages.ggpubr
          #rPackages.svglite
          #rPackages.factoextra

        ];
        runScript = "${pkgs.neovim}/bin/nvim";
      };
    };
}
