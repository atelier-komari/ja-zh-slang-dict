#!/bin/bash

# this may error on github ci
# put before `set -e` to ignore error
export max_print_line=$(expr $(tput cols) - 1)

set -exou pipefail

# use -pvc to enable auto-recompile
latexmk -output-directory=build -lualatex "$@"
