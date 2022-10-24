{ pkgs ? import <nixpkgs> {} }:

(pkgs.buildFHSUserEnv {
  name = "testFHSEnv";
  targetPkgs = pkgs: (with pkgs;
    [
    ]);
  multiPkgs = pkgs: (with pkgs;
    [
      alsa-lib
      (curl.override { gnutlsSupport = true; opensslSupport = false; })
      freetype
      xorg.libX11
      xorg.libXext
      stdenv.cc.cc.lib
    ]);
  runScript = "bash";
}).env
