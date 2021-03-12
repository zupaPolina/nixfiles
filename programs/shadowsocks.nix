{ config, pkgs, ... }: {
  systemd.services.ss-client = {
    unitConfig = {
      Description = "Shadowsocks-libev Daemon";
      Wants = "network-online.target";
      After = "network.target";
    };

    serviceConfig = {
      Type =  "simple";
      ExecStart = "${pkgs.shadowsocks-libev}/bin/ss-local -c /home/polina/.config/shadowsocks-libev/config.json";
    };

    wantedBy = [ "multi-user.target" ];
  };
}
