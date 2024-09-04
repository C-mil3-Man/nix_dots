{ pkgs, lib, ... }:

{
  # Root Password
  users.users.root.hashedPassword = "!"; # Consider using a hashed password if needed

  # TPM2
  security.tpm2 = {
    enable = true;
    pkcs11.enable = true;
    tctiEnvironment.enable = true;
  };

  # AppArmor
  security.apparmor = {
    enable = true;
    packages = with pkgs; [
      apparmor-utils
      apparmor-profiles
    ];
  };

  # Fail2Ban
  services.fail2ban.enable = true;
  # Customize Fail2Ban configuration as needed

  # PAM and BrowserPass
  security.pam.services.hyprlock = {}; # Ensure proper configuration
  programs.browserpass.enable = true;

  # ClamAV
  services.clamav = {
    daemon.enable = true;
    fangfrisch.enable = true;
    fangfrisch.interval = "daily";
    updater.enable = true;
    updater.interval = "daily"; # Ensure appropriate update frequency
    updater.frequency = 12;
    scanner = {
      enable = true;
      interval = "Sat *-*-* 04:00:00";
    }
  };

  # Firejail Entries
  programs.firejail = {
    enable = true;
    wrappedBinaries = { 
      mpv = {
        executable = "${lib.getBin pkgs.mpv}/bin/mpv";
        profile = "${pkgs.firejail}/etc/firejail/mpv.profile";
      };
      imv = {
        executable = "${lib.getBin pkgs.imv}/bin/imv";
        profile = "${pkgs.firejail}/etc/firejail/imv.profile";
      };
      zathura = {
        executable = "${lib.getBin pkgs.zathura}/bin/zathura";
        profile = "${pkgs.firejail}/etc/firejail/zathura.profile";
      };
      thunar = {
        executable = "${lib.getBin pkgs.xfce.thunar}/bin/thunar";
        profile = "${pkgs.firejail}/etc/firejail/thunar.profile";
      };
      firefox = {
        executable = "${lib.getBin pkgs.firefox}/bin/firefox";
        profile = "${pkgs.firejail}/etc/firejail/firefox.profile";
      };
    };
  };

  # System Security Packages
  environment.systemPackages = with pkgs; [
    vulnix
    clamav
    chkrootkit
    pass-wayland
    pass2csv
    passExtensions.pass-tomb
    passExtensions.pass-update
    passExtensions.pass-otp
    passExtensions.pass-import
    passExtensions.pass-audit
    tomb
  ];
}

