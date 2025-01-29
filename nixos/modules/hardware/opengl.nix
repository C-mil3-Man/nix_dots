{ config, pkgs, ... }:

{
  hardware = {
    #video.hidpi.enable = false;
    graphics = {
      enable = true;
      driSupport32Bit = true;
      extraPackages = with pkgs; [
        intel-media-driver # New Intel GPUs, 2014+ Intel Media Driver for VAAPI — Broadwell iGPUs
        #intel-vaapi-driver # Old Intel GPUs, 2008-2017 Coffee Lake

        #libvdpau-va-gl
      ];
    };
    cpu.intel.updateMicrocode = true;
  };
  environment.sessionVariables = { LIBVA_DRIVER_NAME = "iHD"; }; # iHD = Intel-media-driver
}
