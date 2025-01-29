{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = [
    inputs.nixvim.packages.${pkgs.system}.core
  ];
  # For further customization, use:
  # inputs.nvix.packages.${pkgs.system}.default.extend { }
  # Check the variables.nix file or the Nixvim Wiki for additional configuration options.
}
