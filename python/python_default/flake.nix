{
  description = "Developer shell flake for Python development";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11"; 
  };

  outputs = { self, nixpkgs }: {
    devShells.x86_64-linux.default = let
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
      pythonPackages = pkgs.python311Packages;
    in 
      pkgs.mkShell {
        name = "python-dev-shell";
        venvDir = "./.venv";
        packages = [ 

          #packages to get python running in general
          pythonPackages.python
          pythonPackages.venvShellHook

          #these are the dependencies that we want to add to PYTHONPATH in the venv
          pythonPackages.numpy

          # binary extensions that the pythonPackages may require
          pkgs.taglib
          pkgs.openssl
          pkgs.git
          pkgs.libxml2
          pkgs.libxslt
          pkgs.libzip
          pkgs.zlib
          pkgs.libz
          pkgs.stdenv.cc.cc.lib
        ];

        postVenvCreation = ''
          unset SOURCE_DATE_EPOCH
          pip install -r requirements.txt
        '';

        postShellHook = ''
          # allow pip to install wheels
          unset SOURCE_DATE_EPOCH
        '';
      };
  };
}

