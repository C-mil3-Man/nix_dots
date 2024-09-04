{ pkgs, ... }:

{
  # Use the Zen kernel for optimized performance
  boot.kernelPackages = pkgs.linuxPackages_zen;

  # Kernel parameters for security and performance
  boot.kernelParams = [ 
    "quiet"
    "fbcon=nodefer"
    "vt.global_cursor_default=0"
    "kernel.modules_disabled=1"
    "lsm=landlock,lockdown,yama,integrity,apparmor,bpf,tomoyo,selinux"
    "usbcore.autosuspend=-1"
    "video4linux"
    "acpi_rev_override=5"
    "security=selinux"
  ];

  # Optional: Uncomment for custom SELinux kernel patches
  # boot.kernelPatches = [ {
  #   name = "selinux-config";
  #   patch = null;
  #   extraConfig = '' 
  #     SECURITY_SELINUX y
  #     SECURITY_SELINUX_BOOTPARAM n
  #     SECURITY_SELINUX_DEVELOP y
  #     SECURITY_SELINUX_AVC_STATS y
  #     DEFAULT_SECURITY_SELINUX n
  #   '';
  # } ];

  # Use a custom systemd build with SELinux support
  systemd.package = pkgs.systemd.override { withSelinux = true; };

  # Additional SELinux tools
  environment.systemPackages = with pkgs; [
    policycoreutils  # SELinux policy utilities
  ];
}

