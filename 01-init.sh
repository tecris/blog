#!/bin/bash

rm -rf archetypes content content data layouts static themes
docker run --rm --name "hugo-blog" -v $(pwd):/src jojomi/hugo hugo new site obvius
docker run --rm -v $(pwd):/src jojomi/hugo chown -R 1000:1000 obvius
cd obvius/
git clone https://github.com/xianmin/hugo-theme-jane.git --depth=1 themes/jane
cp -r themes/jane/exampleSite/content ./
cp themes/jane/exampleSite/config.toml ./
