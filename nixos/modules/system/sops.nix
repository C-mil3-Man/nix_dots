{ inputs, config, ... }:

{
  imports = [
    inputs.sops-nix.nixosModules.sops
  ];

  # Example configuration for sops
  # You can uncomment and configure this section as needed
  # sops = {
  #   defaultSopsFile = "/path/to/your/sops.yaml";
  # };
}
