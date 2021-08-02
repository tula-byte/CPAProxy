#!/bin/bash
set -e

cd "`dirname \"$0\"`"
TOPDIR=$(pwd)

PLATFORM_TARGET="macOS" ./build-libs.sh "11.3"
PLATFORM_TARGET="iOS" ./build-libs.sh "14.5"
./build-xcframework.sh
./build-cpaproxy-xcframework.sh
