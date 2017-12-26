#!/usr/bin/env sh

command -v qt5ct > /dev/null
if [ $? != 0 ]; then
	echo
	echo "You do not have qt5ct installed..."
	echo "Install with:"
	echo "     azryn -i qt5ct"
	echo
	exit 1
fi

echo
echo "Installing Dark Themes for AzrynOS..."
echo
echo "LXQT Breeze-Dark..."
mkdir -vp $HOME/.local/share/lxqt/themes
cp -av ./breeze-dark $HOME/.local/share/lxqt/themes/

echo
echo "Installing QT5CT Dark Theme..."
echo
mkdir -vp $HOME/.config/qt5ct/colors
cp -v ./BreezeDark.conf $HOME/.config/qt5ct/colors

echo
echo "Starting qt5ct"
echo "Please set the Widget style to be \"Breeze\" "
echo "Set Color Scheme to \"BreezeDark\""
QT_PLATFORM_PLUGIN=qt5ct; QT_PLATFORM_PLUGIN=qt5ct; qt5ct

echo
echo "Adding qt5ct to LXQT environment"
echo
sed -i "$(grep -n "Environment" $HOME/.config/lxqt/session.conf | cut -d: -f 1)a QT_PLATFORM_PLUGIN=qt5ct\nQT_QPA_PLATFORMTHEME=qt5ct" $HOME/.config/lxqt/session.conf
echo
echo "Set the LXQT Theme to breeze-dark"
echo
lxqt-config-appearance

echo
echo "You will need to log out and log back in to have all settings apply."
echo "Enjoy!"
echo
