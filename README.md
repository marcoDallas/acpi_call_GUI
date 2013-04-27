acpi_call_GUI
=============
This is a java program that provides a graphic interface that allows the user to:

install the acpi_call kernel module (kernel would be recompiled automatically after each update);

Deactivate discrete GPU;

Automatically deactivate discrete GPU on every boot.

******************************************************************************************************************
This program only works with Ubuntu and other debian-based distributions, and need to be installed firefox.
******************************************************************************************************************

To install:
after downloading the program, enter the directory acpi_call_GUI and launch `install.sh` . 
if you have the program in your home directory (for example typing <code> git clone https://github.com/marcoDallas/acpi_call_GUI.git </code>), you only need to type in terminal:

<code> cd acpi_call_GUI </code>

<code> sudo chmod +x install.sh </code>

<code> sudo ./install.sh </code>

To execute:

type in a terminal: 

<code> java -jar $HOME/acpi_call_GUI.jar </code>

See there for a video guide: https://www.youtube.com/watch?v=h33bvoR14x8

Note:

acpi_call module should be used with caution. I reccomend you to take a look to the readme of the acpi_call module: https://github.com/mkottman/acpi_call

Copyright:

  Copyright (C) 2013: Marco Dalla Libera 
  
  acpi_call_GUI is free software; you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation; either version 3 of the License, or
  (at your option) any later version.
  
  acpi_call_GUI is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.
  
  You should have received a copy of the GNU General Public License
  along with this program; if not, write to the Free Software
  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
  MA 02110-1301, USA.
  
  and:
  
  Copyright (c) 2010: Michal Kottman
  
  acpi_call is free software: you can redistribute it and/or modify 
  it under the terms of the GNU General Public License as published by 
  the Free Software Foundation, either version 3 of the License, or 
  (at your option) any later version.
 
  acpi_call is distributed in the hope that it will be useful, 
  but WITHOUT ANY WARRANTY; without even the implied warranty of 
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
  See the GNU General Public License for more details.
