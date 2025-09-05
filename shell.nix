let
  # Rolling updates, not deterministic.
  pkgs = import <nixpkgs> {};

in pkgs.mkShell {
  buildInputs = [ pkgs.cargo pkgs.rustc ];
}
