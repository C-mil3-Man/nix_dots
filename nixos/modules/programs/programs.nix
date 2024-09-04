{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    firefox
    tdesktop
    discord
    teams-for-linux
    obsidian
  ];
}

