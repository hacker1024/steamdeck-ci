# A NixOS configuration designed to build as many Steam Deck-related packages as
# possible.
#
# This is not intended for use as a real system!

{ pkgs, ... }:

{
  imports = [
    ../../common
    <jovian-nixos/modules>
  ];

  nixpkgs.hostPlatform = "x86_64-linux";

  networking.networkmanager.enable = true;

  jovian = {
    devices.steamdeck.enable = true;
    steam = {
      enable = true;
      autoStart = true;
      desktopSession = "gamescope-wayland";
      user = "root";
    };
    decky-loader.enable = true;
  };

  environment.systemPackages = with pkgs; [
    # Arbitrary packages with common Steam Deck modifications.
    # Feel free to add more with a PR!
    (cage.override ({ wlroots, ... }: { wlroots = wlroots.override { enableXWayland = false; }; })) # Useful for running Wayland-only apps in gamescope
    (kodi-wayland.withPackages (kodiPackages: with kodiPackages; [ joystick ])) # Kodi with gamepad support
  ];
}
