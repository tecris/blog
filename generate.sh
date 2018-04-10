#!/bin/bash

# generate site
docker run --rm --name "my-hugo" -p 1313:1313 -v $(pwd):/src jojomi/hugo hugo
# site available in the public directory
