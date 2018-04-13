#!/bin/bash

# usage ./addPost.sh post-title-here

cd obvius;
docker run --rm -v $(pwd):/src jojomi/hugo hugo new content/post/$1.md
# docker run --rm -v $(pwd):/src jojomi/hugo hugo new content/post/post-uno.md
# docker run --rm -v $(pwd):/src jojomi/hugo hugo new content/post/post-due.md
