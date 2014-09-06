#!/bin/sh

#   rddesktop_init.sh
#
#   Do initial desktop setup for a user account.
#
#   (C) Copyright 2014 Fred Gleason <fredg@paravelsystems.com>
#
#   This program is free software; you can redistribute it and/or modify
#   it under the terms of the GNU General Public License version 2 as
#   published by the Free Software Foundation.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public
#   License along with this program; if not, write to the Free Software
#   Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
#

#
# Set Wallpaper
#
gsettings set org.gnome.desktop.background picture-uri "$HOME/Pictures/Paravel_Gray1024.png"

#
# Desktop Lockdowns
#
# gsettings set org.gnome.desktop.lockdown disable-application-handlers true
gsettings set org.gnome.desktop.lockdown disable-lock-screen true
gsettings set org.gnome.desktop.lockdown disable-user-switching true

#
# Screensaver
#
gsettings set org.gnome.desktop.screensaver idle-activation-enabled false
gsettings set org.gnome.desktop.screensaver user-switch-enabled false

#
# Session Management
#
gsettings set org.gnome.SessionManager auto-save-session false
gsettings set org.gnome.SessionManager auto-save-session-one-shot false

#
# Cleanups
#
gsettings set org.gnome.desktop.privacy remove-old-temp-files true
gsettings set org.gnome.desktop.privacy remove-old-trash-files true

#
# Desktop Sounds
#
gsettings set org.gnome.desktop.sound event-sounds false

#
# Desktop Device Icons
#
gsettings set org.gnome.nautilus.desktop home-icon-visible true
gsettings set org.gnome.nautilus.desktop network-icon-visible false
gsettings set org.gnome.nautilus.desktop trash-icon-visible false
gsettings set org.gnome.nautilus.desktop volumes-visible false

#
# Remove Autostart Entry (so we only run once)
#
rm -f $HOME/.config/autostart/rddesktop_init.desktop


# End of rddesktop_init.sh
