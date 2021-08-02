#!/bin/bash
set -e

cd "`dirname \"$0\"`"
TOPDIR=$(pwd)

PLATFORM_TARGET="iOS" ARCHS="arm64" ./build-libs.sh "14.5"
PLATFORM_TARGET="macOS" ARCHS="arm64" ./build-libs.sh "11.3"
ARCHS="arm64" ./build-xcframework.sh
./build-cpaproxy-xcframework.sh
