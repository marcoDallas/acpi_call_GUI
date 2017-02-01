#!/bin/sh

 # Copyright 2013-2017 (C) Marco Dalla Libera 
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

url="/usr/local/bin/acpi_call_GUI/kernel.txt"
s=$(uname -r)
x=$(sed -n '1p' $url)
if [ $s != $x ]
then
    cd /usr/local/bin/acpi_call
    make
    insmod acpi_call.ko
    uname -r > $url
fi
