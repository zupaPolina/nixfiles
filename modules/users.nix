{ config, pkgs, ... }: {
  users.extraUsers.polina = {
    isNormalUser = true;
    shell = pkgs.zsh;
    extraGroups = [ "wheel" "audio" "video" "networkmanager" "syncthing" ];
  };
}
