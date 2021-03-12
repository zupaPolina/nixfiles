{ config, ... }: {
  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

#  supportedFilesystems = [ "ntfs" ];
}
