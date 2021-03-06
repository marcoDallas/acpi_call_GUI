#!/bin/sh
#Script that remove acpi_call_GUI, acpi_call, and all of the scripts.
 # Copyright (C) 2013-2016 Marco Dalla Libera 
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
if [ $(id -u) = "0" ] 
then
    rm -R /usr/local/bin/acpi_call
    rm -R /usr/local/bin/acpi_call_GUI
    rm /usr/share/pixmaps/acpiCallGui.png
    rm /usr/share/applications/acpi_call_GUI.desktop
    #removes the scripts from rc.local
    C=1
    D="/usr/local/bin/acpi_call_GUI/deactivate.sh"
    while read line
    do
    if [ "$line" = "$D" ] 
    then
    break
    fi
    C=$(($C+1))
    done < /etc/rc.local
    N=$C'd'
    TMP=$C'p'
    B=$(sed -n "$TMP" /etc/rc.local)
    if [ "$B" = "$D" ]
    then
    sed -i -e "$N" /etc/rc.local
    fi
    #turn off script
    C=1
    D="/usr/local/bin/acpi_call_GUI/agg_acpi_call.sh"
    while read line
    do
    if [ "$line" = "$D" ] 
    then
    break
    fi
    C=$(($C+1))
    done < /etc/rc.local
    N=$C'd'
    TMP=$C'p'
    B=$(sed -n "$TMP" /etc/rc.local)
    if [ "$B" = "$D" ]
    then
    sed -i -e "$N" /etc/rc.local
    fi
    #enabling GPU drivers again
    echo "enabling GPU drivers..."
    rm /etc/modprobe.d/noGPUDriver.conf
    echo "uninstall complete!"
else
    echo "Please use sudo: 'sudo ./uninstall.sh'"
fi    
