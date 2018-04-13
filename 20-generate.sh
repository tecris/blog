#!/bin/bash

cd obvius;
# generate site
#docker run --rm -v $(pwd):/src jojomi/hugo hugo
# https://gohugo.io/getting-started/usage/#draft-future-and-expired-content
docker run --rm -v $(pwd):/src jojomi/hugo hugo --buildDrafts
docker run --rm -v $(pwd):/src jojomi/hugo chown -R 1000:1000 obvius
# site available in the public directory
