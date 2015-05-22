#!/bin/bash
set -e

mkdir -p ./build/

scss-lint _grid.scss
scss-lint _gridTest.scss

sassc --load-path ../../../extend-core/modular-scale/ --sourcemap app.scss build/app.css

autoprefixer build/app.css
