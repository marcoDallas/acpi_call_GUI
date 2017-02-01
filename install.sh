#!/bin/sh
#Script for the installation of acpi_call_GUI
 # Copyright (C) 2013-2017 Marco Dalla Libera 
 # 
 # acpi_call_GUI is free software; you can redistribute it and/or modify
 # it under the terms of the GNU General Public License as published by
 # the Free Software Foundation; either version 3 of the License, or
 # (at your option) any later version.
 # 
 # acpi_call_GUI is distributed in the hope that it will be useful,
 # but WITHOUT ANY WARRANTY; without even the implied warranty of
 # MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 # GNU General Public License for more details.
 # 
 # You should have received a copy of the GNU General Public License
 # along with this program; if not, write to the Free Software
 # Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 # MA 02110-1301, USA.

if [ $(id -u) != "0" ] 
then
    url="/usr/local/bin"
    echo "Copying files..."
    sudo cp -r acpi_call_GUI $url
    url="/usr/local/bin/acpi_call_GUI"
    sudo chown -R $USER $url
    sudo cp acpiCallGui.png /usr/share/pixmaps
    sudo cp acpi_call_GUI.desktop /usr/share/applications/
    sudo mkdir /usr/local/bin/acpi_call
    sudo chown $USER /usr/local/bin/acpi_call
    mkdir $url/log
    mkdir $url/codes
    touch $url/log/install_log
    touch $url/log/deactivate_log
    touch $url/log/automates_log
    touch $url/codes/off
    echo "Giving files the right permissions..."
    chmod 644 $url/log/install_log
    chmod 644 $url/log/deactivate_log
    chmod 644 $url/log/automates_log
    chmod 644 $url/codes/off
    chmod 555 $url/acpi_call_GUI_systemd.jar
    chmod 555 $url/agg_acpi_call.sh
    chmod 555 $url/automates.sh
    chmod 555 $url/deactivate.sh
    chmod 555 $url/installation.sh

    echo "Creating link of the java program to the user's home directory"
    url="/usr/local/bin/acpi_call_GUI/acpi_call_GUI.jar"
    part1=$(df /usr/local/bin/acpi_call_GUI/acpi_call_GUI.jar | awk '/^\/dev/ {print $1}')
    part2=$(df $HOME | awk '/^\/dev/ {print $1}')
    if [ $part1 = $part2 ]
    then
      ln -f $url/acpi_call_GUI.jar $HOME
    else
      ln -s $url/acpi_call_GUI.jar $HOME
    fi
    echo "Installing prerequisites..."
    sudo apt-get install linux-headers-`uname -r` build-essential
    echo "Installation complete"
else
    echo "Please don't run this script with sudo, it will ask for password when necessary: use './install.sh'"
fi
