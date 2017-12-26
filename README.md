# AzrynOS-Theme

This is a customized theme for LXQT for usage with AzrynOS

When doing an install of LXQT and attempting to use the QT theme "Breeze", it does not allow you to change the Color Palette of the theme to use the Dark Theme.
This uses the tool qt5ct to set your QT Theme and allow for "Breeze" to use the Dark Palette

# Instructions

NOTE:  qt5ct is required.  The script will not run without it.

To install qt5ct:
	azryn -i qt5ct

Once qt5ct is installed, cd into the AzrynOS-Theme directory and run:
	./setup.sh

You will have to manually set the themes in qt5ct, as well in lxappearance.  The install script will give you the option to do so during the install.

Once you log out and log back in, you will be running the "Breeze-Dark" theme

# Why does this exist?

As stated, without doing a full install of KDE you cannot change the color palette of a theme.  The ONLY way to bypass this is to use qt5ct.  However, when a dark theme is then applied via qt5ct, the LXQT Panel will not display the Application Menu properly unless using a "Light" theme.

Instead, a new custom theme has been added to LXQT that is modified to allow a dark theme for the Application Menu.  The Theme is based off of the "Dark" LXQT Theme.
