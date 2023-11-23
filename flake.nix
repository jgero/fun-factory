{
  description = "Bürokratisieren bis es Spaß macht";
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    treefmt-nix = {
      url = "github:numtide/treefmt-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = { self, nixpkgs, treefmt-nix }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
      treefmtEval = treefmt-nix.lib.evalModule pkgs ./treefmt.nix;
    in
    {
      formatter.${system} = treefmtEval.config.build.wrapper;
      checks.${system}.formatter = treefmtEval.config.build.check self;
      devShells.x86_64-linux.default = pkgs.mkShell {
        packages = [ pkgs.texlive.combined.scheme-full ];
      };
      packages.x86_64-linux = {
        vorladungen = import ./docs/2023_11_vorladung { inherit pkgs; };
      };
    };
}
