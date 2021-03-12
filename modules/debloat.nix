{ config, ... }: {
  disabledModules = [
    "services/x11/desktop-managers/cinnamon.nix"
  ];

  imports = [
    <manixpkgs/modules/cinnamon.nix>
  ];
}
