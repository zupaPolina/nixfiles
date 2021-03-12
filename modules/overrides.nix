{ config, pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = false;
    allowBroken = false;

    packageOverrides = pkgs: {
      unstable = import <unstable> {
        config = config.nixpkgs.config;
      };

      mapkgs = import <manixpkgs> {
        inherit pkgs;
      };
    };

    allowUnfreePredicate = (pkg: builtins.elem (pkg.pname or (builtins.parseDrvName pkg.name).name) [
      "steam"
      "steam-original"
      "steam-runtime"
     ]);
  };

  environment.systemPackages = with pkgs; [
    (neovim.override {
      viAlias = true;
      vimAlias = true;

      configure = {
        packages.myPlugins = with pkgs.vimPlugins; {
          start = [ vim-nix polyglot nord-vim nerdtree ];
          opt = [];
        };

        customRC = ''
          syntax on
          colorscheme nord
          set t_Co=256
          set mouse=a

          set ignorecase
          set smartcase
          set hlsearch
          set incsearch

          set expandtab
          set shiftwidth=2
          set tabstop=2

          set number
          map <F2> :set nonumber!<CR>

          map <F8> :w <CR> :!g++ % -o %< && ./%< <CR>
          map <C-n> :NERDTreeToggle<CR>
        '';
            };
        })

#        (pkgs.dwm.overrideAttrs (oldAttrs: {
#            src = /etc/nixos/sources/dwm-6.2;
#            patches = [
#                /etc/nixos/home/dwm/dwm-titilebarcolor-6.2.diff
#                /etc/nixos/home/dwm/dwm-alwayscenter.diff
#            ];
#        }))
    ];
}
