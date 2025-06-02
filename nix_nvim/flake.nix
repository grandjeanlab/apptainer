{
  description = "Flake to build a neovim image with python and r packages for generic use";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      pkgs = import nixpkgs { system = "x86_64-linux"; allowUnfree = true; };
    in
    {
      packages.x86_64-linux.default = pkgs.singularity-tools.buildImage {
        name = "nvim";
        singularity = pkgs.apptainer;
        runAsRoot = ''
          #!${pkgs.stdenv.shell}
          ${pkgs.dockerTools.shadowSetup}
          mkdir -p /.singularity.d/env/
          echo $APPTAINER_ENVIRONMENT
          echo "export XDG_CACHE_HOME=~/.hpc-tools-cache" >> /.singularity.d/env/91-custom-environment.sh
          echo "export SSL_CERT_FILE=${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt" >> /.singularity.d/env/91-custom-environment.sh
          chmod +x /.singularity.d/env/91-custom-environment.sh
          '';
        diskSize = 1024 * 1024;

        contents = with pkgs; [ 

          nushell
          busybox
          cacert
          curl
          neovim
          fzf
          fd
          lazygit
          git
          yazi
          ripgrep

          quarto

          nodejs
          gcc

          (python313.withPackages (ps: with ps; [
          pandas
          numpy
          matplotlib
          scipy
          seaborn
          statsmodels
          jupyter
          pyqt5
          nilearn
          ]))
          
          (rWrapper.override { packages = with pkgs.rPackages; [
          tidyverse
          easystats
          RNifti
          ggdist
          cluster
          wesanderson
          MetBrewer
          glue
          abind
          ggpubr
          svglite
          factoextra
          dabestr
          ];})

        ];
        runScript = "${pkgs.neovim}/bin/nvim";
      };
    };
}
