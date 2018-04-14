#!/bin/bash

cd trivialis-blog;
# start web server with drafts enabled
docker run --rm --name "my-hugo" -p 1313:1313 -v $(pwd):/src jojomi/hugo hugo server -D --bind=0.0.0.0
