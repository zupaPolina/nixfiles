{ config, pkgs, ... }: {
  fonts = rec {
    fonts = with pkgs; [
      ubuntu_font_family
    ];

    fontconfig = {
      enable = true;
      dpi = 96;
      hinting.enable = true;
      antialias = true;

      subpixel = {
        rgba = "rgb";
        lcdfilter = "default";
      };
    };
  };
}
