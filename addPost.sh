#!/bin/bash

cd obvius;
docker run --rm -v $(pwd):/src jojomi/hugo hugo new content/post/it-started-here.md
# docker run --rm -v $(pwd):/src jojomi/hugo hugo new content/post/post-uno.md
# docker run --rm -v $(pwd):/src jojomi/hugo hugo new content/post/post-due.md
