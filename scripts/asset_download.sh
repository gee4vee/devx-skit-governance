#!/bin/bash
set -x

echo "Directory * "
pwd
echo "ls -al *"
ls -al

echo "Fetching deployment assets"
curl https://codeload.github.com/reedcozart/deployment-assets/tar.gz/master | tar -xz
mv deployment-assets-master/chart ./chart
rm -r deployment-assets-master
