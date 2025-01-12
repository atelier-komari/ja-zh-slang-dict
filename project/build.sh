#!/bin/bash

set -exou pipefail

# use -pvc to enable auto-recompile
latexmk -output-directory=build -xelatex "$@"
