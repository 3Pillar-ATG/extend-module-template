#!/bin/bash
set -e

mkdir -p ./build/

scss-lint _input.scss
scss-lint _inputTest.scss

sassc \
--load-path ../../../extend-core/modular-scale/ \
--load-path ../../../extend-core/vertical-rhythm/ \
--sourcemap app.scss build/app.css

autoprefixer build/app.css
