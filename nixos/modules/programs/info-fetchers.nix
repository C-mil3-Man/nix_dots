{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # System fetch tools (system information fetchers)
    neofetch
    onefetch
    ipfetch
    cpufetch
    ramfetch
    starfetch

    # System monitoring and visualization
    htop
    bottom
    btop
    zfxtop
    kmon

    # GPU tools
    gpu-viewer
    wlr-randr

    # Network tools
    dig
    speedtest-rs

    # Optional tools (uncomment to use)
    # vulkan-tools
    # opencl-info
    # clinfo
    # vdpauinfo
    # libva-utils
    # nvtop
  ];
}

