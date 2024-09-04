{ config, pkgs, ... }:

{
  # Enable Hyprland
  programs.hyprland.enable = true;
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  environment.sessionVariables.WLR_NO_HARDWARE_CURSORS = "1";

  environment.systemPackages = with pkgs; [
    pyprland
    hyprpicker
    hyprcursor
    hyprlock
    hypridle
    #hyprpaper
    xdg-desktop-portal-hyprland

    #wezterm not working as of 24/08/30
    kitty
    cool-retro-term

    starship
    helix

    qutebrowser #terminal centric browser
    zathura
    mpv
    imv
  ];
}

