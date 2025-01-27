{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    firefox
    signal-desktop
    discord
    teams-for-linux
  ];
}

