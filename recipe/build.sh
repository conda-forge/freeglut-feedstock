#!/bin/bash


mkdir build && cd build
cmake ${CMAKE_ARGS} \
	-DCMAKE_INSTALL_PREFIX=$PREFIX          \
	-DCMAKE_INSTALL_LIBDIR=$PREFIX/lib      \
	-DCMAKE_BUILD_TYPE=Release              \
	-DFREEGLUT_BUILD_DEMOS=OFF              \
	-DFREEGLUT_BUILD_STATIC_LIBS=OFF        \
	-DFREEGLUT_BUILD_SHARED_LIBS=ON         \
	-DCMAKE_POLICY_VERSION_MINIMUM=3.5      \
	..

make
make install
