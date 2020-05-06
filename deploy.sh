#!/usr/bin/env bash
set -euo pipefail

# TODO unclear if really required if using "npm run build:prod" instead of "ng build -prod"
npm install @angular/cli

npm run build:prod

firebase deploy --only hosting:openmf-web-app
