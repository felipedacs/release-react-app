#!/usr/bin/env bash

git clone https://github.com/felipedacs/release release --branch release
yarn build

cp -r build/* release/

cd release
git add .
git commit -m "add release"
git tag 4.9.1 HEAD
git push -u origin release --tags

cd ..
rm -rf release
