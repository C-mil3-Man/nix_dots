{ config, pkgs, ... }:

{
  networking.networkmanager.enable = true;
  networking.hostName = "nixOS";
}