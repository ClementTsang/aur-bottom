#!/bin/bash

set -e

echo "Validating bottom-bin..."

cp -r bottom-bin btm-bin-test

cd btm-bin-test
makepkg -si

btm -V

cd ..

rm -rf btm-bin-test