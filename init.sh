#!/bin/bash

docker run --rm --name "hugo-blog" -P -v $(pwd):/src jojomi/hugo hugo new site obvius
cd obvius/
git clone https://github.com/xianmin/hugo-theme-jane.git --depth=1 themes/jane
cp -r themes/jane/exampleSite/content ./
cp themes/jane/exampleSite/config.toml ./
