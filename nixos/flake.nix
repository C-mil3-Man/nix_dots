{
  description = "Crux's NixOS Configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/24.05";
    nixvim.url = "github:elythh/nixvim";
    sops-nix.url = "github:Mic92/sops-nix";
  };

  outputs = { nixpkgs, ... } @ inputs: {
    nixosConfigurations = {
      nixOS = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";

      specialArgs = { inherit inputs; };

      modules = [
        ./configuration.nix
        ./hardware-configuration.nix
        ];
      };
    };
  };
}
