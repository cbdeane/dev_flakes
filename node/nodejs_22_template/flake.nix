{
  description = "Developer shell flake for node js 22 LTS";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11"; 
  };

  outputs = { self, nixpkgs }: {

    templates.nodejs_22 = {
      devShells.x86_64-linux.default = let 
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
      in 
        pkgs.mkShell {
          packages = [ pkgs.nodejs_22 ];
        };
    };
  templates.default = self.templates.nodejs_22;
  };
}

