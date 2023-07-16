{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
  };
  outputs = {nixpkgs, ...}: 
  let 
    system = "x86_64-linux";
    pkgs = import nixpkgs { inherit system; };
  in {
    packages.${system}.default = pkgs.stdenv.mkDerivation {
      name = "resume";
      src = ./.;
      buildInputs = [
        pkgs.typst
      ];
      installPhase = ''
        mkdir -p $out
        ${pkgs.typst}/bin/typst compile resume.typ
        mv resume.pdf $out/
      '';
    };
  };
}
