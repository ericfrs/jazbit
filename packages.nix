{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  services.mysql = {
    enable = true;
    package = pkgs.mariadb;
  };

  environment.systemPackages = with pkgs; [
    htop
    fastfetch
    obsidian
    zip
    xz
    unzip
    p7zip
    vscode
    kitty
    kitty-themes
    starship
    nodejs
    readest
    mysql-workbench
    git
    google-chrome
    gnome-tweaks
    adw-gtk3
    gnomeExtensions.appindicator
    gnomeExtensions.just-perfection
    gnomeExtensions.caffeine
    gnomeExtensions.clipboard-indicator
  ];

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
    fira-code
    fira-code-symbols
    inter
    roboto
    ibm-plex
    jetbrains-mono
    maple-mono.NF
  ];
}
