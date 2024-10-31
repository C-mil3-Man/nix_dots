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
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJovGggX1Gf8Q958SMRErmQtkaeTisfcaVW0a86i2Snp crux"
    ];
  };
}

