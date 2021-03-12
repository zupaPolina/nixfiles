{ config, ... }: {
  services.syncthing = {
    enable = true;
    user = "Polina";
    dataDir = "/home/Polina/.config/syncthing";
    relay.enable = true;
  };
}
