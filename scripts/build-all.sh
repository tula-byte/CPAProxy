#!/bin/bash
set -e

cd "`dirname \"$0\"`"
TOPDIR=$(pwd)


PLATFORM_TARGET="iOS" ARCHS="arm64" ./build-libs.sh
ARCHS="arm64" ./build-xcframework.sh
./build-cpaproxy-xcframework.sh
