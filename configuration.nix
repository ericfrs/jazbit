{ config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ./modules/system.nix
      ./modules/desktop.nix
      ./modules/packages.nix
      ./modules/user.nix
      ./modules/gaming.nix
    ];

  system.stateVersion = "25.05";
}
