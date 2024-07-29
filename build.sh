#!/bin/sh

# Copy everything from ./overrides/ to ./merged/
cp -R ./origin/ ./merged/
cp -R ./overrides/ ./merged/
mkdir ./dist/ # Outputs
cd ./merged/
sass ./scss/bootstrap.scss ../dist/bootstrap.css