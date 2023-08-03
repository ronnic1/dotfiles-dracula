{ config, pkgs, ... }:

{
  # Allow proprietary packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    wget git vim
    stow
    firefox
    rofi
    lxappearance
    neofetch
    sudo
    alacritty
    ncdu
    kitty
    gzip
    unar
    unzip
    p7zip
    cpio
    deluge-gtk
    nitrogen
    picom
    steam

    # Build toolchains
    python3
    pipenv

    ruby
    bundler

    ghc
    stack

    # GUI tools
    gnome3.file-roller


    # Media
    ffmpeg-full

    # IDEs
    jetbrains.clion
    jetbrains.webstorm
    jetbrains.idea-ultimate
    jetbrains.pycharm-professional


    # Desktop
    xmonad-with-packages
    xorg.xmodmap
    xorg.xset
    xorg.xsetroot

    terminus_font
    terminus_font_ttf
    dejavu_fonts
    hack-font
    hasklig
    inriafonts
    iosevka

    sway
    ncmpcpp
    powerline-fonts
  ];
}
