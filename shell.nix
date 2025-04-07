{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShellNoCC {
	packages = with pkgs; [ gnumake lua54Packages.lua python3 ];
}
