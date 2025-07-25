{
  description = "test";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
outputs = { self, nixpkgs, nixvim, ... }:
  let
    pkgs = import nixpkgs { system = "x86_64-linux"; config.allowUnfree = true;};
  in
  {
    packages.x86_64-linux.default = pkgs.singularity-tools.buildImage {


      name = "hpc-tools";
      singularity = pkgs.apptainer;
      runScript = "#!${pkgs.stdenv.shell}\nexec /bin/sh $@";
      runAsRoot = ''
        #!${pkgs.stdenv.shell}
        ${pkgs.dockerTools.shadowSetup}
        mkdir -p /.singularity.d/env/
        echo $APPTAINER_ENVIRONMENT
        echo "export XDG_CACHE_HOME=~/.hpc-tools-cache" >> /.singularity.d/env/91-custom-environment.sh
        echo "export SSL_CERT_FILE=${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt" >> /.singularity.d/env/91-custom-environment.sh
        chmod +x /.singularity.d/env/91-custom-environment.sh
      '';
      diskSize = 1024 * 20;
      memSize = 1024 * 8;
      contents = with pkgs; [
        (nixvim.legacyPackages."${pkgs.stdenv.hostPlatform.system}".makeNixvimWithModule {
          inherit pkgs;
          module = ./nixvim;
        })
          nushell
          busybox
          cacert
          curl
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
    };
  };
}
