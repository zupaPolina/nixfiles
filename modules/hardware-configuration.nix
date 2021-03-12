{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "xhci_pci" "ehci_pci" "ahci" "usb_storage" "sd_mod" "sr_mod" "rtsx_pci_sdmmc" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/62905129-1548-4b81-88d0-3bc056dd020d";
      fsType = "ext4";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/8CC0-1525";
      fsType = "vfat";
    };

  fileSystems."/home" =
    { device = "/dev/disk/by-uuid/3ff827e7-8d46-4cca-b8c9-c1fe2d977760";
      fsType = "ext4";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/071af797-6bf1-47df-8df8-b2022ae54466"; }
    ];

  powerManagement.cpuFreqGovernor = lib.mkDefault "performance";
}
