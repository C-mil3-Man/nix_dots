{ config, ... }:

{
  # Set hardware clock and time zone
  time.hardwareClockInLocalTime = true;  # Assume hardware clock is in local time.
  time.timeZone = "Europe/Stockholm";    # Set system timezone to Europe/Stockholm.

  # Enable timesyncd for automatic time synchronization
  services.timesyncd.enable = true;
}

