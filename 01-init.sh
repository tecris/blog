#!/bin/bash

# rm -rf trivialis-blog
docker run --rm --name "hugo-blog" -v $(pwd):/src jojomi/hugo hugo new site trivialis-blog
docker run --rm -v $(pwd):/src jojomi/hugo chown -R 1000:1000 trivialis-blog
cd trivialis-blog/
git clone https://github.com/xianmin/hugo-theme-jane.git --depth=1 themes/jane
cp -r themes/jane/exampleSite/content ./
cp themes/jane/exampleSite/config.toml ./
