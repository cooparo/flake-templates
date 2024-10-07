{
  description = "Python development flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: 
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};

# in case of missing dependencies from pkgs
 #    bit = pkgs.python312Packages.buildPythonPackage {
 #      pname = "bit";
 #      version = "0.8.0";
 #      doCheck = false;
	#
 #      src = (pkgs.fetchFromGitHub {
	#   owner = "ofek";
	#   repo = "bit";
	#   rev = "45ce495338f86bac8ee85b88aaa75813cdd50808";
	#   sha256 = "8eBLQBagYrypgCYJXtox4UMF6lC6E7xKQcWyy8XALko=";    
	# }
 #      );
 #    };
  in
  {
    devShells.${system}.default = pkgs.mkShellNoCC {
      packages = with pkgs; [

	(python312.withPackages (ps: with ps;[
	  # Python 3.12 packages
	  # bit
	]))
      ];

    };
  };
}
