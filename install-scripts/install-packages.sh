if [ -f /etc/os-release ]
then
    DISTRO=$(cat /etc/os-release | grep 'ID_LIKE' | cut -f2- -d=)
else
    echo "ERROR: I need the file /etc/os-release to determine what my distribution is..."
    exit
fi

# TODO: Add support and test for other distros and macOS
if [ "$DISTRO" = "debian" ]
then
    PACKAGE_MANAGER="apt-get -y"
    # sudo apt-get -y upgrade
    # sudo apt-get -y install emacs
    # sudo apt-get -y install gcc
    # sudo apt-get -y install g++
else
    echo "ERROR: " "$DISTRO" " is not supported..."
    exit
fi

sudo $PACKAGE_MANAGER upgrade
sudo $PACKAGE_MANAGER install emacs
sudo $PACKAGE_MANAGER install gcc
sudo $PACKAGE_MANAGER install g++

