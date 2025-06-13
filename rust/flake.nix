{
  description = "Rust flake development";

  inputs.nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

  outputs =
    { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        RUST_SRC_PATH = pkgs.rust.packages.stable.rustPlatform.rustLibSrc;

        packages = with pkgs; [
          cargo
          rustc
          rustfmt
          cargo-watch # for tests
        ];
      };
    };
}
