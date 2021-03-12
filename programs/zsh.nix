{ config, ... }: {
  programs.zsh = {
    enable = true;
    histSize = 256;
    syntaxHightlighting.enable = true;

    promptInit = ''
      PROMPT=" > "
      RPROMPT="%~"
    '';

    shellAliases = {
      "l" = "ls -al";
      ".."="cd ..";
      "cfg" = "cd /etc/nixos";
      "pkgs" = "vi /etc/nixos/modules/packages.nix";
      "nixreb" = "sudo nixos-rebuild switch";
      "nixupdate" = "sudo nix-channel --update && sudo nixos-rebuild switch --upgrade";
      "nixclean" = "sudo nix-collect-garbage -d && nix-collect-garbage -d";
    };

    setOptions = [
      "HIST_IGNORE_DUPS"
      "SHARE_HISTORY"
      "HIST_FCNTL_LOCK"
    ];
  };
}
