#!/bin/sh
#Script launched by acpi_call_GUI, java application that mangaes acpi_call modules

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

url="/usr/local/bin/acpi_call_GUI"
git clone https://github.com/marcoDallas/acpi_call.git /usr/local/bin/acpi_call 
#chown $USER -R /usr/local/bin/acpi_call
cd /usr/local/bin/acpi_call 
make
#pkexec insmod /usr/local/bin/acpi_call/acpi_call.ko && chmod 644 /proc/acpi/call
#chown $USER /proc/acpi/call
#pkexec chmod 644 /proc/acpi/call #root
chmod +x $url/agg_acpi_call.sh 
#Modifing the rc.local file:
uname -r > $url/kernel.txt 
C=1 
D="$url/agg_acpi_call.sh"
while read line
do
    if [ "$line" = "exit 0" ] 
    then
        break
    elif [ "$line" = "$url/agg_acpi_call.sh" ]
    then 
        exit
    fi
    C=$(($C+1))
done < /etc/rc.local
pkexec sh -c "insmod /usr/local/bin/acpi_call/acpi_call.ko ; chmod 644 /proc/acpi/call ; sed -i '$C i $D' /etc/rc.local ; echo 'disabling GPU drivers, please note that if necessary uninstall.sh will also re-enable them' ; cp /usr/local/bin/acpi_call_GUI/noGPUDriver.conf /etc/modprobe.d/" #root
