{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_4_18;

  networking.hostName = "luna"; 
  networking.networkmanager.enable = true;

  fonts.enableDefaultFonts = true;
  fonts.enableFontDir = true;
  fonts.fonts = [ pkgs.inconsolata pkgs.fira-code ];

  time.timeZone = "Europe/Berlin";

  environment.systemPackages = [
    (pkgs.polybar.override { i3Support = true; })
  ];

  services.printing.enable = true;
  services.xserver.enable = true;
  services.xserver.windowManager.i3.enable = true;
  services.xserver.libinput.enable = true;

  nixpkgs.config.allowUnfree = true;

  sound.enable = true;
  hardware.pulseaudio.enable = true;

  programs.fish.enable = true;

  users.users.lu = {
    isNormalUser = true;
    extraGroups = ["wheel" "networkmanager"];
    shell = pkgs.fish;
  };

  system.stateVersion = "18.09";
}
