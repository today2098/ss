#!/bin/bash

SECONDS=0

echo "The pre-install of ns3 starts."

# # minimal requirements for C++ users (release 3.36 and development)
# echo "\n> sudo apt -y install g++ python3 cmake"
# sudo apt -y install g++ python3 cmake

# minimal requirements for Python API users (release 3.30 and newer, and ns-3-dev)
echo -e "\n> sudo apt -y install g++ python3 python3-dev pkg-config sqlite3 cmake"
sudo apt -y install g++ python3 python3-dev pkg-config sqlite3 cmake

# additional minimal requirements for Python (development)
echo -e "\n> sudo apt -y install python3-setuptools git"
sudo apt -y install python3-setuptools git

# Netanim animator
# echo -e "\n> sudo apt -y install qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools"
# sudo apt -y install qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools
echo -e "\n> sudo apt -y install qt5-default"
sudo apt -y install qt5-default


# Support for ns-3-pyviz visualizer
echo -e "\n> sudo apt -y install gir1.2-goocanvas-2.0 python3-gi python3-gi-cairo python3-pygraphviz gir1.2-gtk-3.0 ipython3"
sudo apt -y install gir1.2-goocanvas-2.0 python3-gi python3-gi-cairo python3-pygraphviz gir1.2-gtk-3.0 ipython3

# Support for MPI-based distributed emulation
echo -e "\n> sudo apt -y install openmpi-bin openmpi-common openmpi-doc libopenmpi-dev"
sudo apt -y install openmpi-bin openmpi-common openmpi-doc libopenmpi-dev

# Support for bake build tool
echo -e "\n> sudo apt -y install autoconf cvs bzr unrar"
sudo apt -y install autoconf cvs bzr unrar

# Debugging
echo -e "\n> sudo apt -y install gdb valgrind"
sudo apt -y install gdb valgrind

# Support for utils/check-style.py code style check program
echo -e "\n> apt -y install uncrustify"
sudo apt -y install uncrustify

# # Doxygen and related inline documentation
# echo -e "\n> sudo apt -y install doxygen graphviz imagemagick"
# sudo apt -y install doxygen graphviz imagemagick
# echo -e "\n> sudo apt -y install texlive texlive-extra-utils texlive-latex-extra texlive-font-utils dvipng latexmk"
# sudo apt -y install texlive texlive-extra-utils texlive-latex-extra texlive-font-utils dvipng latexmk

# # The ns-3 manual and tutorial are written in reStructuredText for Sphinx (doc/tutorial, doc/manual, doc/models), and figures typically in dia (also needs the texlive packages above)
# echo -e "\n> sudo apt -y install python3-sphinx dia"
# sudo apt -y install python3-sphinx dia

# GNU Scientific Library (GSL) support for more accurate 802.11b WiFi error models (not needed for OFDM)
echo -e "\n> sudo apt -y install gsl-bin libgsl-dev libgslcblas0"
sudo apt -y install gsl-bin libgsl-dev libgslcblas0

# To read pcap packet traces
echo -e "\n> sudo apt -y install tcpdump"
sudo apt -y install tcpdump

# Database support for statistics framework
echo -e "\n> sudo apt -y install sqlite sqlite3 libsqlite3-dev"
sudo apt -y install sqlite sqlite3 libsqlite3-dev

# Xml-based version of the config store (requires libxml2 >= version 2.7)
echo -e "\n> sudo apt -y install libxml2 libxml2-dev"
sudo apt -y install libxml2 libxml2-dev

# Support for generating modified python bindings
echo -e "\n> sudo apt -y install cmake libc6-dev libc6-dev-i386 libclang-dev llvm-dev automake python3-pip"
sudo apt -y install cmake libc6-dev libc6-dev-i386 libclang-dev llvm-dev automake python3-pip
echo -e "\n> python3 -m pip install --user cxxfilt"
python3 -m pip install --user cxxfilt

# A GTK-based configuration system
echo -e "\n> sudo apt -y install libgtk-3-dev"
sudo apt -y install libgtk-3-dev

# To experiment with virtual machines and ns-3
echo -e "\n> sudo apt -y install vtun lxc uml-utilities"
sudo apt -y install vtun lxc uml-utilities

# Support for openflow module (requires libxml2-dev if not installed above) and Boost development libraries
echo -e "\n> sudo apt -y install libxml2 libxml2-dev libboost-all-dev"
sudo apt -y install libxml2 libxml2-dev libboost-all-dev


time=${SECONDS}
echo -e "\nAll completed. This processing took ${time} seconds."
