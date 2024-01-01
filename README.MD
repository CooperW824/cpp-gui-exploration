# Exploring GUI Development in C++

A simple GUI project in C++ the goal is to make a simple calculator app like I did about 4 years ago, but this time in C++ instead of Win-Forms C#

I want to explore three different libraries:

1. Qt
1. GTK+
1. Dear ImGUI

## With Qt
Framework I am using is Qt, this exploration will be full explained on my blog

[My Blog](https://blog.cooperw.tech)

To get the QT installer working I needed to install a variety of libraries,

sudo apt-get install -y libgl1-mesa-dev 
sudo apt-get install -y libxcb-icccm4 
sudo apt-get install -y libxcb-image0
sudo apt-get install -y libxcb-keysyms1
sudo apt-get install -y libxcb-render-util0
sudo apt-get install -y libxcb-shape0
sudo apt-get install -y libxcb-xinerama0
sudo apt-get install -y libxcb-xkb1
sudo apt install libxkbcommon-x11-0

I also needed to make sure I had an account with Qt which you can make for free online

Then you can run the binary with 
sudo ./qt-unified-linux-x64-4.6.1-online.run

Then when I tried to run QtCreator I ran into:
qt.qpa.plugin: Could not load the Qt platform plugin "wayland" in "" even though it was found.

So I installed 
sudo apt install qtwayland5

Which fixed the issue

Then after running Qt Creator to Create the Project
I ran into a CMAKE issue where it couldn't find the Qt files:

Could not find a package configuration file provided by "QT" with any of   the following names:      Qt6Config.cmake     qt6-config.cmake     Qt5Config.cmake     qt5-config.cmake

So I added the following line to the top of my CMake Config:

set(CMAKE_PREFIX_PATH "/opt/Qt/6.6.1/gcc_64/lib/cmake")

Then it couldn't find the xkb and Vulkan Libraries so I added those libraries

sudo apt install libxkbcommon-dev
sudo apt install vulkan-tools
sudo apt install libvulkan-dev
sudo apt install vulkan-validationlayers-dev spirv-tools