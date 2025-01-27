{
  description = "Crux's NixOS Configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/24.11";
    nixvim = {
      url = "github:spector700/Akari";
      inputs.nixpkgs.follows = "nixpkgs";
      };
    sops-nix {
      url = "github:Mic92/sops-nix";
      inputs.nixpkgs.follows = "nixpkgs";
      };
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
