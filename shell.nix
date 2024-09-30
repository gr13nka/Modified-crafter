let
  pkgs = import <nixpkgs> { };
in
pkgs.mkShell
{
  propagatedBuildInputs = with pkgs.python3Packages; [
    pip
    venvShellHook
    ipython
    numpy
    pygame
  ] ++ (with pkgs; [
  ]);
  venvDir = "pygame";
}


