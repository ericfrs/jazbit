{ config, pkgs, ... }:

{
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };

  programs.gamemode = {
    enable = true;
    enableRenice = true;
    
    settings = {
      general = {
        desiredgov = "performance";
        defaultgov = "powersave";
        renice = 10;
        inhibit_screensaver = 1;
      };
      
      cpu = {
        park_cores = "no";
        pin_cores = "yes";
      };
    };
  };
}
