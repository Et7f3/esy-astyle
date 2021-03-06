#!/usr/bin/env bash

OS=$(uname)

if [ $OS == "Darwin" ] || [ $OS == "Linux" ]; then
  cd "_build"
  make
elif [[ $OS =~ "CYGWIN" ]]; then
  mv "windows/bin/AStyle.exe" "_build/astyle.exe"
fi