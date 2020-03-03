#!/bin/bash

source $(dirname $0)/packages.env

pushd $(dirname $0)/..
yarn install
popd

for entry in ${PACKAGE_FILES}; do
  PACKAGE_DIR=$(dirname $entry)
  echo Preparing ${PACKAGE_DIR}
  pushd ${PACKAGE_DIR}
  yarn install
  popd
done

