#!/bin/sh
OS_TARGETS="linux"

for os in $OS_TARGETS; do
  GOOS=$os go build -ldflags "-s -w" -o bin/isupam_$os ./cmd/isupam
done
