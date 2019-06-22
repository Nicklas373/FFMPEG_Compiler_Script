# FFMPEG_Compiler_Script

FFMPEG Basic Builder Script For Ubuntu 16.04 Environment
This FFMPEG Builder script, has no any copyright or license
Based on https://seanthegeek.net/455/how-to-compile-and-install-ffmpeg-4-0-on-debian-ubuntu/

This basic guide supports Ubuntu Xenial Xerus 16.04 and will enable several external encoding and decoding libraries: 
- libfaac-dev (AAC encoder) 
- libfdk-aac (AAC encoder) 
- libmp3lame (MP3 encoder) 
- libopencore-amr (AMR encoder/decoder) 
- librtmp (for additional RTMP protocols) 
- libtheora (Theora encoder)
- libvorbis (Vorbis encoder) 
- libvpx (VP8 encoder/decoder
- libx264 (H.264 encoder)
- libx264 (H.265 encoder)
- libmp3lame-dev (MPEG-3 encoder)
- libopus-dev (Opus encoder)
- libbluray-dev (Non-free bluray encoder)
- libwavpack-dev (Wavpack encoder)
- libxvidcore-dev (Xvid encoder) 

These are optional library and still many more inside. I'm using ffmpeg-4.1.3 for now, will looking later for latest snapshot release.
Also, this will install ffmpeg as build package, so don't need to save any folder of compilation after compiled.

This script will install full package of FFMPEG:
- ffmpeg
- ffplay
- ffprobe

How to use:
- change permission to 0755
- run with sudo ./ffmpeg.sh
- follow script instruction
