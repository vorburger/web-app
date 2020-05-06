#!/usr/bin/env bash
set -euo pipefail

npm install @angular/cli

./node_modules/.bin/ng build -prod

firebase deploy --only hosting:openmf-web-app
