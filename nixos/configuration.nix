{ config, pkgs, ... }:

{
  imports = [
    # Hardware Configuration
    ./hardware-configuration.nix

    # System Configuration
    ./modules/system/security.nix
    ./modules/system/network.nix
    ./modules/system/users.nix
    ./modules/system/gc.nix
    ./modules/system/linux-kernel.nix
    ./modules/system/swap.nix
    ./modules/system/usb.nix
    ./modules/system/bootloader.nix
    ./modules/system/sops.nix

    # Desktop Environment
    ./modules/desktop/hyprland.nix
    ./modules/desktop/display-manager.nix
    ./modules/desktop/screen.nix
    ./modules/desktop/theme.nix
    ./modules/desktop/fonts.nix

    # Hardware Configuration
    ./modules/hardware/bluetooth.nix
    ./modules/hardware/sound.nix
    ./modules/hardware/opengl.nix

    # Services
    ./modules/services/autoupgrade.nix
    ./modules/services/open-ssh.nix
    ./modules/services/services.nix

    # Nix Configuration
    ./modules/nix/nixpkgs.nix
    ./modules/nix/nix-settings.nix

    # Programs
    ./modules/programs/terminal-utils.nix
    ./modules/programs/programs.nix
    ./modules/programs/info-fetchers.nix
    ./modules/programs/nixvim.nix

    # Internationalisation
    ./modules/internationalisation/locale.nix
    ./modules/internationalisation/time.nix
  ];

  # IMPORTANT
  system.stateVersion = "24.11"; # Adjust to your NixOS version
}
