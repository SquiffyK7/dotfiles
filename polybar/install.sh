#!/usr/bin/env bash

./dependencies.sh

if [[ "$?" != "0" ]]; then
  exit $?
fi
