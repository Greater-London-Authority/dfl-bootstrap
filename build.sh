#!/bin/sh

# Copy everything from ./overrides/ to ./merged/
mkdir merged
cp -R ./origin/* ./merged/
cp -R ./overrides/* ./merged/
mkdir /dist/ # Outputs
sass ./merged/scss/bootstrap.scss /dist/bootstrap.css
