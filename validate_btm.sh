#!/bin/bash

set -e

echo "Validating bottom..."

cp -r bottom btm-test

cd btm-test
makepkg -si

btm -V

cd ..

rm -rf btm-test