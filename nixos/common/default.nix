{ options, ... }:

{
  # We are not making bootable or persistant systems; disable anything required for that.
  system.stateVersion = options.system.stateVersion.default;
  boot.loader.grub.device = "nodev";
  fileSystems."/".fsType = "tmpfs";

  # If we need a package, we need a package ¯\_(ツ)_/¯
  nixpkgs.config.allowUnfree = true;
  hardware.enableRedistributableFirmware = true;
}
