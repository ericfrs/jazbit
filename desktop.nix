{ config, pkgs, ... }:

{
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  services.xserver.xkb = {
    layout = "us";
    variant = "";
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
