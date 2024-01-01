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