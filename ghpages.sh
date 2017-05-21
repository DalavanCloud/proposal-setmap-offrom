#!/bin/sh
set -x

yarn build &&
  git checkout master &&
  mv out/index.html index.html &&
  mv out/spec.css spec.css &&
  mv out/spec.js spec.js &&
  git add {index.html,spec.css,spec.js} &&
  git commit -a -m "update gh-pages" &&
  git push origin master &&
open "https://tc39.github.io/proposal-setmap-offrom"

