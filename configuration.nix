{ config, pkgs, ... }: {
  imports = [
    <nixos-hardware/lenovo/thinkpad/t440p>

    /etc/nixos/modules/hardware-configuration.nix
    /etc/nixos/modules/hardware.nix
    /etc/nixos/modules/packages.nix
    /etc/nixos/modules/boot.nix
    /etc/nixos/modules/overrides.nix
    /etc/nixos/modules/users.nix
    /etc/nixos/modules/network.nix
    /etc/nixos/modules/xserver.nix
    /etc/nixos/modules/fonts.nix
    /etc/nixos/modules/debloat.nix

    /etc/nixos/programs/zsh.nix
    /etc/nixos/programs/ssh.nix
#    /etc/nixos/programs/gpg.nix
    /etc/nixos/programs/entropy.nix
    /etc/nixos/programs/shadowsocks.nix
#    /etc/nixos/programs/syncthing.nix
    /etc/nixos/programs/rxvtd.nix
  ];

  time.timeZone = "Europe/Moscow";
  system.stateVersion = "20.09";
  environment.sessionVariables = {
    EDITOR = "nvim";
  };
}
