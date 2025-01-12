#!/bin/bash

set -exou pipefail

find -name '*.tex' -print0 | xargs -P0 -0 -i latexindent -wd -s -d --GCString '{}'
