{
  description = "Python development flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: 
  let
    pkgs = nixpkgs.legacyPackages."x86_64-linux";
  in
  {
    devShells."x86_64-linux".default = pkgs.mkShellNoCC {
      packages = with pkgs; [
	python312.withPackages (ps: with ps;[
	  # Python 3.12 packages
	])
      ];

      inputsFrom = [];
    };
  };
}
