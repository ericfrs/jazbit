{ config, pkgs, ... }:

{
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  # X Server and display manager
  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
    
    xkb = {
      layout = "us";
      variant = "";
    };
  };

  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

  environment.gnome.excludePackages = with pkgs; [
    epiphany
    gedit
    yelp
    geary
    gnome-contacts
    gnome-maps
    gnome-music
    gnome-tour
    gnome-connections
    gnome-logs
    evince
    simple-scan
    pkgs.decibels
    pkgs.gnome-font-viewer
  ];
}
