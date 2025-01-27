{ config, pkgs, ... }:

{
  # Enable Hyprland
  programs.hyprland.enable = true;

  environment = {
    sessionVariables = {
      NIXOS_OZONE_WL = "1";
      WLR_NO_HARDWARE_CURSORS = "1";
    };

    systemPackages = with pkgs; [
      pyprland
      hyprpicker
      hyprcursor
      hyprlock
      hypridle
      hyprpaper
      xdg-desktop-portal-hyprland

      kitty
      ghostty
      starship
      helix

      zathura
      mpv
      imv
    ];
  };
}
