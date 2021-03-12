{ config, pkgs, ... }: {
  hardware = {
    pulseaudio = {
    enable = true;
#    package = pkgs.pulseaudioFull;
#    support32Bit = true;
    daemon.config = {
      flat-volumes = "no";
      resample-method = "copy";
    };
  };

    opengl = {
      enable = true;
      driSupport = true;
#      driSupport32Bit = true;
     };
  };
}
