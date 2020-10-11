#!/bin/bash
path=$(pwd)
find $path -name "*.html" | xargs -d "\n" tar -czf html.tar.gz



