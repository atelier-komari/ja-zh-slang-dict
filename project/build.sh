#!/bin/bash

set -exou pipefail

latexmk -output-directory=build -xelatex
