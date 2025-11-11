{ config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ./system.nix
      ./desktop.nix
      ./packages.nix
      ./user.nix
      ./gaming.nix
    ];

  system.stateVersion = "25.05";
}
