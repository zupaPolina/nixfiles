{ config, ... }: {
  services.openssh = {
    enable = true;
    ports = [ 22228 ];
    permitRootLogin = "no";
    passwordAuthentication = false;
  };
}
