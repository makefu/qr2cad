{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation rec {
  name = "qr2cad-env";
  version = "1.1";
  buildInputs = with pkgs; [
    openscad 
    freecad
    python2
    python2Packages.pillow
    python2Packages.qrcode
  ];
  shellHook = ''
    HISTFILE=$PWD/.histfile
  '';
}
