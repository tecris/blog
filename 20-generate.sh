#!/bin/bash

cd trivialis-blog;
# generate site
docker run --rm -v $(pwd):/src jojomi/hugo hugo
# https://gohugo.io/getting-started/usage/#draft-future-and-expired-content
# docker run --rm -v $(pwd):/src jojomi/hugo hugo --buildDrafts
docker run --rm -v $(pwd):/src jojomi/hugo chown -R 1000:1000 public
# site available in the public directory
