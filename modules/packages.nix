{ pkgs, ... }: {
    environment.systemPackages =  with pkgs; [
        wget
        git
        psmisc
        xclip
        nnn

        gcc

        evince
        mpv
        youtube-dl
        lollypop
        gthumb
        libreoffice hunspellDicts.en_US hunspellDicts.ru_RU
        gimp
        rawtherapee
        kid3
        mkvtoolnix
        flacon
        keepassxc
#        veracrypt
        steam
#        lutris-unwrapped
        transmission-remote-gtk
        newsboat
        neofetch

        arc-theme arc-kde-theme qogir-icon-theme

        unstable.firefox unstable.brave
        unstable.tdesktop
        unstable.shadowsocks-libev

        mapkgs.foliate
    ];
}
