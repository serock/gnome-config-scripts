#!/bin/bash
gsettings set org.gtk.Settings.FileChooser sort-directories-first true
gsettings set org.gtk.gtk4.Settings.FileChooser sort-directories-first true

gsettings set org.gnome.desktop.background picture-options 'scaled'
gsettings set org.gnome.desktop.background picture-uri "'file://${HOME}/.local/share/backgrounds/night.jpg'"
gsettings set org.gnome.desktop.background picture-uri-dark "'file://${HOME}/.local/share/backgrounds/night.jpg'"

gsettings set org.gnome.desktop.interface clock-show-weekday true

gsettings set org.gnome.desktop.privacy recent-files-max-age 30

gsettings set org.gnome.desktop.screensaver picture-options 'scaled'
gsettings set org.gnome.desktop.screensaver picture-uri "'file://${HOME}/.local/share/backgrounds/night.jpg'"

gsettings set org.gnome.desktop.session idle-delay 600

gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'

gsettings set org.gnome.gedit.preferences.editor insert-spaces true
gsettings set org.gnome.gedit.preferences.editor tabs-size 4

gsettings set org.gnome.TextEditor highlight-current-line true
gsettings set org.gnome.TextEditor show-line-numbers true
gsettings set org.gnome.TextEditor indent-style 'space'
gsettings set org.gnome.TextEditor indent-width 4
gsettings set org.gnome.TextEditor tab-width 4

gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'
gsettings set org.gnome.nautilus.preferences show-image-thumbnails 'never'
gsettings set org.gnome.nautilus.preferences thumbnail-limit 5

gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-automatic false
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-from 0.0
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-to 23.75

gsettings reset org.gnome.settings-daemon.plugins.media-keys custom-keybindings
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Control><Alt>t'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command 'gnome-terminal'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'Terminal'

gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-timeout 3600
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-timeout 1800
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type 'nothing'

gsettings set org.gnome.shell disable-user-extensions true
gsettings set org.gnome.shell favorite-apps "['firefox.desktop', 'chromium-browser.desktop', 'org.gnome.Nautilus.desktop', 'org.gnome.Music.desktop']"

gsettings set org.gnome.shell.weather locations "[<(uint32 2, <('Wilkes-Barre', 'KAVP', true, [(0.72149972216646618, -1.3216796707113367)], [(0.7198770197477169, -1.3243786653199134)])>)>]"
gsettings set org.gnome.Weather locations "[<(uint32 2, <('Wilkes-Barre', 'KAVP', true, [(0.72149972216646618, -1.3216796707113367)], [(0.7198770197477169, -1.3243786653199134)])>)>]"

gsettings set org.gnome.software download-updates false
gsettings set org.gnome.software download-updates-notify true

gsettings set org.gnome.Terminal.Legacy.Settings theme-variant 'dark'
profile_uuid=$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d \')
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile_uuid}/ use-theme-colors false
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile_uuid}/ background-color '#000000'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile_uuid}/ foreground-color '#dfdfdf'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile_uuid}/ palette "['#000000', '#cb0000', '#00cd00', '#cfcf00', '#5e86d6', '#ce00ce', '#00a0ce', '#cfcfcf', '#767676', '#ff5e5e', '#00ff00', '#ffff00', '#70a0ff', '#ff28ff', '#00b2ff', '#ffffff']"

if [[ ! -d ~/.local/share/icons/Adwaita/scalable/mimetypes ]]; then
    mkdir -p ~/.local/share/icons/Adwaita/scalable/mimetypes
fi

if [[ ! -e ~/.local/share/icons/Adwaita/scalable/mimetypes/application-vnd.oasis.opendocument.spreadsheet.svg && -e /usr/share/icons/hicolor/scalable/apps/libreoffice-calc.svg ]]; then
    ln -s /usr/share/icons/hicolor/scalable/apps/libreoffice-calc.svg ~/.local/share/icons/Adwaita/scalable/mimetypes/application-vnd.oasis.opendocument.spreadsheet.svg
fi

if [[ ! -e ~/.local/share/icons/Adwaita/scalable/mimetypes/application-vnd.oasis.opendocument.text.svg && -e /usr/share/icons/hicolor/scalable/apps/libreoffice-writer.svg ]]; then
    ln -s /usr/share/icons/hicolor/scalable/apps/libreoffice-writer.svg ~/.local/share/icons/Adwaita/scalable/mimetypes/application-vnd.oasis.opendocument.text.svg
fi

if [[ ! -e ~/.local/share/icons/Adwaita/scalable/mimetypes/application-x-gnucash.svg && -e /usr/share/icons/hicolor/scalable/apps/gnucash-icon.svg ]]; then
    ln -s /usr/share/icons/hicolor/scalable/apps/gnucash-icon.svg ~/.local/share/icons/Adwaita/scalable/mimetypes/application-x-gnucash.svg
fi

if [[ ! -e ~/.local/share/icons/Adwaita/scalable/mimetypes/application-x-keepassxc.svg && -e /usr/share/icons/hicolor/scalable/mimetypes/application-x-keepassxc.svg ]]; then
    ln -s /usr/share/icons/hicolor/scalable/mimetypes/application-x-keepassxc.svg ~/.local/share/icons/Adwaita/scalable/mimetypes/
fi

case $(hostnamectl chassis) in
    desktop )
        gsettings set org.gnome.settings-daemon.plugins.color night-light-temperature 3700
        ;;
    laptop )
        gsettings set org.gnome.desktop.interface show-battery-percentage true
        gsettings set org.gnome.desktop.peripherals.touchpad speed 0.75

        gsettings set org.gnome.settings-daemon.plugins.color night-light-temperature 3100

        gdbus call --session --dest org.gnome.SettingsDaemon.Power --object-path /org/gnome/SettingsDaemon/Power \
        --method org.freedesktop.DBus.Properties.Set org.gnome.SettingsDaemon.Power.Screen Brightness "<int32 50>"
        ;;
    * )
        ;;
esac

