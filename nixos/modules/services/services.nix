{ pkgs, ... }:

{
  # Systemd services setup
  systemd.packages = with pkgs; [
    auto-cpufreq  # Automatic CPU frequency scaling
  ];

  # Enable Services
  services = {
    geoclue2.enable = true;     # Geo-location service
    upower.enable = true;       # Power management
    dbus.enable = true;         # D-Bus for inter-process communication
    fwupd.enable = true;        # Firmware updates
    auto-cpufreq.enable = true; # Auto CPU frequency scaling
    tumbler.enable = true;      # Thumbnailing daemon
    mpd.enable = true;          # Music Player Daemon
  };

  # Enable Programs
  programs = {
    direnv.enable = true;       # Directory-based environment management
    fish.enable = true;         # Fish shell
    dconf.enable = true;        # Dconf settings manager
    thunar.enable = true;       # Thunar file manager
    xfconf.enable = true;       # XFCE config tool
  };

  # D-Bus Packages
  services.dbus.packages = with pkgs; [
    xfce.xfconf    # XFCE configuration manager
    gnome2.GConf   # GNOME configuration system
  ];

  # System packages for Hyprland environment
  environment.systemPackages = with pkgs; [
    # Accessibility and Utilities
    at-spi2-atk         # Accessibility toolkit
    qt6.qtwayland       # Qt Wayland integration
    xdg-utils           # XDG utilities for desktop integration

    # Clipboard and Screen Utilities
    wl-clipboard        # Wayland clipboard utilities
    wl-clip-persist     # Persistent clipboard manager
    cliphist            # Clipboard history tool
    wl-screenrec        # Screen recording tool for Wayland
    grim                # Screenshot utility
    slurp               # Region selector for screenshots
    imagemagick         # Image manipulation tools
    swappy              # Image editor for screenshots
    gifsicle            # GIF creation/manipulation tools

    # Notification and Alerts
    dunst               # Notification daemon
    psi-notify          # Low memory notifier
    poweralertd         # Power alert daemon
    playerctl           # Media player controller

    # Wayland and Display
    wtype               # Type characters on Wayland
    wlrctl              # Control Wayland compositor
    waybar              # Status bar for Wayland
    rofi-wayland        # Application launcher for Wayland
    wlogout             # Logout screen for Wayland

    # Other Tools
    psmisc              # Miscellaneous system utilities
    avizo               # System resource monitor
    ffmpeg_6-full       # Full version of FFmpeg with support for all codecs
  ];
}

