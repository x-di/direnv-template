{
  description = "direnv php80";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    php-80.url = "github:nixos/nixpkgs/3007746b3f5bfcb49e102b517bca891822a41b31"; # ambil dari nixhub
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, php-80, utils, ... }@inputs:
    utils.lib.eachDefaultSystem (system:
      let
        inherit (lib) attrValues;
        pkgs = nixpkgs.legacyPackages.${system};
        php = php-80.legacyPackages.${system};
        lib = nixpkgs.lib;
      in
      rec {
        devShell = with pkgs; mkShell {
          buildInputs = [
            php.php80
            php.php80Packages.composer
            nodejs_20
          ];
        };
      });
}
