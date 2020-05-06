#!/usr/bin/env bash
set -euo pipefail

npm install @angular/cli

# TODO --prod, once https://github.com/openMF/web-app/issues/739 is clarified
./node_modules/.bin/ng build

firebase deploy --only hosting:openmf-web-app
