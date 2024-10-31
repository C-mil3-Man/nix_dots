{ pkgs, ... }:

{
  # Fonts
  fonts.packages = with pkgs; [
    jetbrains-mono
    nerdfonts
    nerd-font-patcher
  ];
}
