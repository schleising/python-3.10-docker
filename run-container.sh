#!/bin/zsh
docker rm --force python-3.10
docker run -it --name python-3.10 -v /Users/steve/Documents/Coding/Python/:/code/ python-3.10-image
