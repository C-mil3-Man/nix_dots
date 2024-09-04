{ config, pkgs, ... }:

{
  users.users.crux = {
    isNormalUser = true;
    description = "crux";
    home = "/home/crux";
    shell = pkgs.fish;
    extraGroups = [ "wheel" "networkmanager" "input" "video" "audio" "tss" ];
    packages = with pkgs; [];
    openssh.authorizedKeys.keys = [
      ""
    ]
  };
}

