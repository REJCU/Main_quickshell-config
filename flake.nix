{
  description = "Quickshell configuration with Qt5Compat";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    # Quickshell is usually pulled from its own flake or nixpkgs
    quickshell.url = "github:outfoxxed/quickshell"; 
  };

  outputs = { self, nixpkgs, quickshell }: 
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      devShells.${system}.default = pkgs.mkShell {
        name = "quickshell-env";

        buildInputs = [
          quickshell.packages.${system}.default
          pkgs.qt6.qt5compat
          # Add any other tools you need here (e.g., hyprland)
        ];

        shellHook = ''
          echo "Quickshell environment loaded with Qt5Compat."
        '';
      };
    };
}
