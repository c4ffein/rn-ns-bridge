#!/bin/bash

cd "$(dirname "$(readlink -f "$0")")"
echo BUILDING IN "$(pwd)"
mkdir -p App_Resources/Android/src/main/assets/
mkdir -p App_Resources/Android/src/main/res/
cd react_native_integrated
npm i
npx react-native bundle --platform android --dev false --entry-file index.js \
    --bundle-output ../App_Resources/Android/src/main/assets/index.android.bundle \
    --assets-dest ../App_Resources/Android/src/main/res/
