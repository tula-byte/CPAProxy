#!/bin/bash
set -e

cd "`dirname \"$0\"`"
TOPDIR=$(pwd)

PLATFORM_TARGET="iOS" ./build-libs.sh
./build-xcframework.sh
./build-cpaproxy-xcframework.sh
