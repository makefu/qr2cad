{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation rec {
  name = "qr2cad-env";
  version = "1.1";
  buildInputs = with pkgs; [
    openscad
    python3
    python3Packages.pillow
    python3Packages.qrcode
  ];
  shellHook = ''
    HISTFILE=$PWD/.histfile
  '';
}
