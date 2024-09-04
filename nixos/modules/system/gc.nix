{ config, pkgs, ... }:

{
  # Optimize storage and enable automatic scheduled GC running.
  # Manual GC commands:
  # `nix-store --gc` - Remove unreferenced store paths.
  # `nix-store --optimize` - Eliminate redundant store paths.
  # `nix-collect-garbage -d` - Delete old generations of user profiles.

  nix.settings.auto-optimise-store = true;  # Automatically optimize nix store.
  nix.gc = {
    automatic = true;                       # Enable automatic garbage collection.
    dates = [ "weekly" ];                   # Set to run weekly.
    options = "--delete-older-than 14d";    # Delete items older than 14 days.
  };
}
