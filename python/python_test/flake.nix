{
  description = "Developer shell flake for Python development";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11"; 
  };

  outputs = { self, nixpkgs }: {
    devShells.x86_64-linux.default = let 
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in 
      pkgs.mkShell {
        packages = [ pkgs.python3 ];
        env.LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [
          pkgs.stdenv.cc.cc.lib
          pkgs.libz
        ];
      };
  };
}

