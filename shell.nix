{ pkgs ? import <nixpkgs> { } }:
with pkgs;
pkgs.mkShell {
  buildInputs = [
    nodejs
    python3
  ];

  shellHook = ''
    npm run install
    npm run start
  '';
}
