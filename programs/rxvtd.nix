{ config, pkgs, ... }: {
  services.urxvtd = {
    enable = true;
    package = pkgs.rxvt_unicode;
  };
}
