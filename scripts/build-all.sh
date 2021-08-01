#!/bin/bash
set -e

cd "`dirname \"$0\"`"
TOPDIR=$(pwd)


PLATFORM_TARGET="iOS" ARCHS="arm64" SDK="-sdk iphoneos14.5" ./build-libs.sh
ARCHS="arm64" ./build-xcframework.sh
./build-cpaproxy-xcframework.sh
