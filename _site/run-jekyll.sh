#!/bin/sh

docker run --rm --label=jekyll --volume=${PWD}:/srv/jekyll  -it -p 4000:4000 jekyll/jekyll jekyll serve
