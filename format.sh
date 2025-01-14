#!/bin/bash

set -exou pipefail

#find -name '*.tex' -print0 | xargs -P0 -0 -i latexindent -wd -s -d --GCString '{}'
find -name '*.tex' -print0 | xargs -P0 -0 -i sh -c 'tex-fmt -v -l 79 "$1" && dos2unix "$1"' -- {}
