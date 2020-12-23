#!/bin/zsh

git clone https://github.com/opencv/opencv
git -C opencv checkout 4.5.0
# optionally
git clone https://github.com/opencv/opencv_contrib
git -C opencv_contrib checkout 4.5.0
# optionally
git clone https://github.com/opencv/opencv_extra
git -C opencv_extra checkout 4.5.0

mkdir build
cd build

cmake -DOPENCV_EXTRA_MODULES_PATH=../opencv_contrib/modules ../opencv
cmake --build .
make

sudo cmake --build . --target install
