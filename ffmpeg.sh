#!/bin/bash
# Copyright 2019, Dicky Herlambang "Nicklas373" <herlambangdicky5@gmail.com>
#
# FFMPEG Builder Script For Ubuntu 16.04 Environment
#
# This software is licensed under the terms of the GNU General Public
# License version 2, as published by the Free Software Foundation, and
# may be copied, distributed, and modified under those terms.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#

# This FFMPEG Builder script, has no any copyright or license
# Based on https://seanthegeek.net/455/how-to-compile-and-install-ffmpeg-4-0-on-debian-ubuntu/

# Remove old dependencies before installing new version of ffmpeg
sudo apt -y  remove ffmpeg x264 libav-tools libvpx-dev libx264-dev
sudo apt-get update

# Get the depedencies
sudo apt-get -y install build-essential checkinstall git libfaac-dev libgpac-dev \
  libjack-jackd2-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev \
  libsdl1.2-dev libtheora-dev libva-dev libvdpau-dev libvorbis-dev \
  libx11-dev libxfixes-dev pkg-config texi2html  nasm yasm lib1g-dev \
  autoconf automake cmake libtool checkinstall libass-dev libsdl2-dev \
  libtool libxcb1-dev libxcb-shm0-dev libxcb-xfixes0-dev texinfo libchromaprint-dev \
  ladspa-sdk libcaca-dev libcdio-paranoia-dev libcodec2-dev libmp3lame-dev \
  libfontconfig1-dev libfreetype6-dev libfribidi-dev libgme-dev \
  libgsm1-dev libmodplug-dev libopenjp2-7-dev libopenmpt-dev libvpx-dev \
  libpulse-dev librubberband-dev libshine-dev libx264-dev libx265-dev \
  libsmbclient-dev libsnappy-dev libsoxr-dev libspeex-dev libssh-dev \
  libtheora-dev libtwolame-dev libvo-amrwbenc-dev libopus-dev libbluray-dev \
  libwavpack-dev libwebp-dev libxvidcore-dev libxml2-dev libzmq3-dev libzvbi-dev \
  liblilv-dev libmysofa-dev libopenal-dev opencl-dev libfdk-aac  \

# Installing FFMPEG v4.1.3 build
mkdir ffmpegtemp
cd ffmpegtemp
wget http://ffmpeg.org/releases/ffmpeg-4.1.3.tar.bz2
tar xjvf ffmpeg-4.1.3.tar.bz2
cd ffmpeg-4.1.3
./configure --enable-gpl --disable-static --enable-version3 --enable-shared --enable-small --enable-avisynth --enable-chromaprint --enable-gmp --enable-gnutls --enable-ladspa --enable-libass --enable-libcaca --enable-libcodec2 --enable-libfontconfig --enable-libfreetype --enable-libfribidi --enable-libgme --enable-libgsm --enable-libjack --enable-libmodplug --enable-libmp3lame --enable-libopencore-amrnb --enable-libopencore-amrwb --enable-libopenjpeg --enable-libopenmpt --enable-libopus --enable-libpulse --enable-librsvg --enable-librubberband --enable-librtmp --enable-libshine --enable-libsnappy --enable-libsoxr --enable-libspeex --enable-libssh --enable-libtesseract --enable-libtheora --enable-libtwolame --enable-libv4l2 --enable-libvo-amrwbenc --enable-libvorbis --enable-libvpx --enable-libwavpack --enable-libwebp --enable-libx264  --enable-libx265 --enable-libxvid --enable-libxml2 --enable-libzmq --enable-libzvbi --enable-lv2 --enable-libmysofa --enable-openal --enable-opencl --enable-libdrm --enable-nonfree --enable-libfdk-aac --enable-libbluray

# Cleaning up and install FFMPEG as build package
sudo checkinstall -y --deldoc=yes --pkgversion=10:4.1.3-1
cd ..
rm -rf ffmpegtemp

# Update local libraries
sudo ldconfig
