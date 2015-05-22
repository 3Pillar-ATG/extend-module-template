#!/bin/bash
set -e

mkdir -p ./build/

scss-lint _spacer.scss
scss-lint _spacerTest.scss

sassc --load-path ../../../extend-core/modular-scale/ --sourcemap app.scss build/app.css

autoprefixer build/app.css
