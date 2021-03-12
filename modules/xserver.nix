{ config, pkgs, ... }: {
  services.xserver = {
    enable = true;

    videoDrivers = [ "intel" ];

    displayManager = {
      autoLogin = {
        enable = true;
        user = "polina";
      };

      lightdm = {
        enable = true;
        background = /home/polina/Pictures/wp.jpg;

        greeters.gtk = {
          enable = true;
          theme.name = "Arc-Dark";
          iconTheme.name = "Qugir-dark";
          cursorTheme.name = "Qogir";
          indicators = [ "~spacer" "~clock" "~spacer" "~power" ];
          clock-format = "%d %b %H:%M";
        };
      };

#      defaultSession = "cinnamon_session";
    };

    desktopManager.cinnamon.enable = true;

    libinput.enable = true;
    layout = "us, ru";
    xkbOptions = "grp:alt_shift_toggle";
  };
}
