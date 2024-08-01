#!/bin/sh

docker build -t woo . && docker run -v $(pwd)/output:/output/ -it --rm woo
