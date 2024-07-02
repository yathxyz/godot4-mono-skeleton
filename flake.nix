{
  description = "Flake for reproducible godot engine setup";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }: 
  let
    pkgs = import nixpkgs { system = "x86_64-linux"; config.allowUnfree = true; };
    system = "x86_64-linux";
  in
  {
    devShells.${system}.default = import ./shell.nix { inherit pkgs; };
  };
}
