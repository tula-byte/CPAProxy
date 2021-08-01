#!/bin/bash
set -e

cd "`dirname \"$0\"`"
TOPDIR=$(pwd)


PLATFORM_TARGET="iOS" ARCHS="arm64" ./build-libs.sh "14.5"
ARCHS="arm64" ./build-xcframework.sh
./build-cpaproxy-xcframework.sh
