#!/bin/bash

# start web server
docker run --rm --name "my-hugo" -p 1313:1313 -v $(pwd):/src jojomi/hugo hugo server --bind=0.0.0.0
