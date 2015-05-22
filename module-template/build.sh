#!/bin/bash
set -e

mkdir -p ./build/

scss-lint _component.scss
scss-lint _componentTest.scss

sassc --sourcemap app.scss build/app.css

autoprefixer build/app.css
