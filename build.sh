#!/bin/bash

set -exou pipefail

mkdir -p build

pushd src

pdftex -output-directory=../build -interaction=nonstopmode main.tex
