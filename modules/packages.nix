{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  services.mysql = {
    enable = true;
    package = pkgs.mariadb;
  };

  environment.systemPackages = with pkgs; [
    # System monitoring & info
    htop
    btop
    fastfetch
    
    # Terminal utilities
    bat
    starship
    
    # Compression tools
    zip
    xz
    unzip
    p7zip
    
    # Terminal emulator
    kitty
    kitty-themes
    
    # Development
    vscode
    git
    gh
    nodejs
    mysql-workbench
    
    # Applications
    obsidian
    remnote
    readest
    google-chrome
    
    # GNOME customization
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
    jetbrains-mono
    maple-mono.NF
    inter
    roboto
    ibm-plex
  ];
}
