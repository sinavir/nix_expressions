{ pkgs ? import <nixpkgs> {} }:
{
  x32edit = pkgs.callPackage ./x32edit.nix {
    curlWithGnuTls = pkgs.curl.override { gnutlsSupport = true; opensslSupport = false; };
  };
}
