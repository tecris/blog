#!/bin/bash

cd obvius;
# generate site
docker run --rm -v $(pwd):/src jojomi/hugo hugo
# site available in the public directory
