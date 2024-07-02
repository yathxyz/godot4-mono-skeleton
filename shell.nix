{ pkgs }:

let
  godot4-mono = pkgs.callPackage ./godot.nix { inherit pkgs; };
in
pkgs.mkShell {
    packages = [ pkgs.dotnet-sdk_6 godot4-mono ];
}
