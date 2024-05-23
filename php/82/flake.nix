{
  description = "direnv php82";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils, ... }:
    utils.lib.eachDefaultSystem (system:
      let
        inherit (lib) attrValues;
        pkgs = nixpkgs.legacyPackages.${system};
        lib = nixpkgs.lib;
      in
      rec {
        devShell = with pkgs; mkShell {
          buildInputs = [
            php82
            php82Packages.composer
            nodejs_20
          ];
        };
      });
}
