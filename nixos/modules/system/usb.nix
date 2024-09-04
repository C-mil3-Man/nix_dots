# modules/system/usb.nix
{ pkgs, ... }:

{
  # Enable USB Automounting via GVFS
  services.gvfs.enable = true;

  # Optional: Enable udisks2 for extra device management
  # services.udisks2.enable = true;
  
  # USBGuard configuration to block unauthorized devices
  services.usbguard = {
    enable = true;
    dbus.enable = true;  # Enable D-Bus support for USBGuard.
    implicitPolicyTarget = "block";  # Block USB devices by default.

    # Customize USBGuard rules (replace {id} with your device IDs)
    rules = ''
      allow id {id} # Trusted device 1
      allow id {id} # Trusted device 2
    '';
  };

  # USB-specific tools and utilities
  environment.systemPackages = with pkgs; [
    usbutils  # Provides `lsusb` for listing USB devices
  ];
}

