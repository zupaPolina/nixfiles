{ config, pkgs, ... }: {
  security.rngd.enable = true;
  services.haveged.enable = true;
}
