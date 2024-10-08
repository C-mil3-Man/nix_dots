{
  description = "Crux's NixOS Configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/24.05";  # Nixpkgs source for NixOS
    nixvim.url = "github:elythh/nixvim";  # Add nixvim input
  };

  outputs = { self, nixpkgs, nixvim, ... } @ inputs: {
    nixosConfigurations = {
      nixos-laptop = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";  # Architecture
        specialArgs = { inherit inputs; };  # Pass flake inputs to the configuration
        modules = [
          ./configuration.nix  # Import main configuration
          ./hardware-configuration.nix  # Import hardware configuration
        ];
      };
    };
  };
}
