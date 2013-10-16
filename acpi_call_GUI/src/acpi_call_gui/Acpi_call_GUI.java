/* 
 * Acpi_call_GUI.java
 * 
 * Copyright (C) 2013: Marco Dalla Libera 
 * 
 * acpi_call_GUI is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 * 
 * acpi_call_GUI is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 * 
 * and:
 * 
 * Copyright (c) 2010: Michal Kottman
 * 
 * acpi_call is free software: you can redistribute it and/or modify 
 * it under the terms of the GNU General Public License as published by 
 * the Free Software Foundation, either version 3 of the License, or 
 * (at your option) any later version.
 * 
 * acpi_call is distributed in the hope that it will be useful, 
 * but WITHOUT ANY WARRANTY; without even the implied warranty of 
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
 * See the GNU General Public License for more details.
 */
package acpi_call_gui;

import javax.swing.JFrame;

/**
 * this program allow the user to manage the acpi_call module 
 * @author Marco Dalla Libera `marcoDallas`
 */
public class Acpi_call_GUI {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        JFrame frame=new Acpi_call_GUIFrame();
        frame.setDefaultCloseOperation(JFrame.DO_NOTHING_ON_CLOSE);
        frame.setResizable(false);
        frame.setTitle("Acpi_call_GUI 1.3");
        frame.setLocationRelativeTo(null);
        frame.setVisible(true);
    }
}
