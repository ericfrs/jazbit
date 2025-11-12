{ config, pkgs, ... }:

{
  users.users.ericfrs = {
    isNormalUser = true;
    description = "Eric";
    extraGroups = [ "networkmanager" "wheel" "gamemode" ];
    packages = with pkgs; [
    ];
  };

  security.sudo = {
    enable = true;
    extraConfig = ''
      Defaults pwfeedback
      Defaults insults
      Defaults lecture = never
    '';
  };
}
