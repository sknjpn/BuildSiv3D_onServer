# update package
sudo apt update && sudo apt upgrade -y
sudo apt install ninja-build libasound2-dev libavcodec-dev libavformat-dev libavutil-dev libboost-dev libcurl4-openssl-dev libgtk-3-dev libgif-dev libglu1-mesa-dev libharfbuzz-dev libmpg123-dev libopencv-dev libopus-dev libopusfile-dev libsoundtouch-dev libswresample-dev libtiff-dev libturbojpeg0-dev libvorbis-dev libwebp-dev libxft-dev uuid-dev xorg-dev gcc g++ gcc-9 g++-9 cmake -y

# install gcc version 9 (not 11)
sudo rm /usr/bin/gcc
sudo rm /usr/bin/g++
sudo ln -s /usr/bin/gcc-9 /usr/bin/gcc
sudo ln -s /usr/bin/g++-9 /usr/bin/g++

# clone OpenSiv3D
git clone https://github.com/Siv3D/OpenSiv3D

# cmake OpenSiv3D
cd OpenSiv3D/Linux
mkdir build && cd build
cmake -GNinja -DCMAKE_BUILD_TYPE=RelWithDebInfo ..
cd ..

# build OpenSiv3D
cmake --build build

# install OpenSiv3D
sudo cmake --install build
