acpi_call_GUI
===
## ❗❗❗ IMPORTANT  NOTICE:❗❗❗
Since **Ubuntu 16.04** (and his derivatives) you must use [acpi_call_GUI_systemd](https://github.com/marcoDallas/acpi_call_GUI_systemd "acpi_call_GUI_systemd")

or if you want to use this version you have to manually enable rc-local.service (systemd service):
```
sudo systemctl enable rc-local.service
```
***
This is a java program that provides a graphic interface that allows the user to:

 * Install the acpi_call kernel module (kernel would be recompiled automatically after each update);
 
 * Deactivate discrete GPU;
 
 * Automatically deactivate discrete GPU on every boot.

***
This version only works with Ubuntu and his derivatives, and needs to be installed firefox.

Oder linux distros user? You just need the support for systemd! See here: [acpi_call_GUI_systemd](https://github.com/marcoDallas/acpi_call_GUI_systemd "acpi_call_GUI_systemd")
***

## To install:
after downloading the program, enter the directory acpi_call_GUI and launch `install.sh` as root. 
if you have downloaded the program in your home directory (for example typing `git clone https://github.com/marcoDallas/acpi_call_GUI.git`), you only need to type in a terminal:

```
cd acpi_call_GUI 

sudo chmod +x install.sh 

sudo ./install.sh 
```

## To execute:
Search the program in yuor dash and click on the icon, or type in a terminal: 

```
sudo java -jar $HOME/acpi_call_GUI.jar
```
See here for a video guide: [Video tutorial acpi_call_GUI](https://www.youtube.com/watch?v=h33bvoR14x8 "Go to youtube")
***
## Note:

acpi_call module should be used with caution. I reccomend you to take a look to the readme of the acpi_call module: https://github.com/mkottman/acpi_call
***
##To uninstall:
If you deleted the acpi_call_GUI folder in your home directory re-type the following command in a terminal:
```
git clone https://github.com/marcoDallas/acpi_call_GUI.git
```
if you haven't deleted the folder - or if you just used the command above - type now the following commands:
```
cd acpi_call_GUI

sudo chmod +x uninstall.sh

sudo ./uninstall.sh
```
***
## Screenshots:
#### acpi_call_GUI:
![Image](https://lh5.googleusercontent.com/gbacM0WXNlvXefAVG-pzOlEfTxtFDoeXybGld4Ky2T8=w614-h314-no "acpi_call_GUI")
***
#### Since version 1.4 you can try to automatically find a deactivation code!
![Image](https://lh6.googleusercontent.com/-xudmJqs6jKA/VIGiHnrHR_I/AAAAAAAAJfA/PVUCJYQcuVE/w644-h347-no/Schermata.png "Since version 1.4 you can try to automatically find a deactivation code!")
***
#### Here you can read eventual outputs or errors:
![Image](https://lh5.googleusercontent.com/-i8Q-6UxOSuk/UY-sz6OPtMI/AAAAAAAAA_Q/uterDsLyy2Q/w636-h335-no/Schermata+del+2013-05-12.png "here you can read eventual outputs or errors")
***
#### Copy here the 'Working ACPI handle OFF' code relative to your computer:
![Image](https://lh6.googleusercontent.com/-FuXDqo1CP64/UY-s2FpM2YI/AAAAAAAAA_Y/SPhWcoDQ1Gk/w882-h504-no/Schermata+del+2013-05-08+02%253A49%253A19.png "copy here the 'Working ACPI handle OFF' code relative to your computer")
***
## Copyright:

  Copyright (C) 2013,2014: Marco Dalla Libera 
  
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
