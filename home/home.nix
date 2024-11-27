{ pkgs, hyprland, ... }:

{
  imports = [
    hyprland.homeManagerModules.default
    ./programs
  ];

  home = {
    username = "rafael";
    homeDirectory = "/home/rafael";
  };  

  home.stateVersion = "24.05"; # Please read the comment before changing.

  home.packages = with pkgs; [

    # user apps
    bitwarden-desktop
    firefox-devedition
    spotify
    feh
    discord 
    kitty
    rofi-wayland
    
    # utils
    vim
    neovim
    wget
    git
    zsh
    zsh-powerlevel10k
    oh-my-zsh
    neofetch
    libGL
    egl-wayland
    
    # mist
    hello
  ];

  home.file = {
  };

  
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  programs.home-manager.enable = true;
}
