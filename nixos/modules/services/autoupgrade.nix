{ config, pkgs, ... }:

{
  # Configuration for automatic system upgrades.
  # This setup will apply upgrades to the system configuration. 
  # For upgrading other packages or running a full system upgrade, 
  # use the `topgrade` CLI utility manually. It is recommended 
  # to run `topgrade` weekly or at least monthly.

  system.autoUpgrade = {
    enable = true;
    operation = "switch";                        # Apply updates immediately; use "boot" to apply after reboot
    flake = "/home/crux/nixOS";                        # Path to the flake configuration
    flags = [ 
      "--update-input" "nixpkgs"                 # Update nixpkgs input
      "--commit-lock-file"                       # Commit lock file changes
    ];
    dates = "weekly";                            # Schedule upgrades to run weekly

    # Uncomment and set the following line if you want to use a specific NixOS channel
    # channel = "https://nixos.org/channels/nixos-unstable";
  };
}
