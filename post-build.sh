#!/bin/bash

TARGET_DIR=$1

BRANCH=$(git symbolic-ref -q HEAD)
BRANCH=${BRANCH##refs/heads/chip/}
BRANCH=${BRANCH##refs/heads/nextthing/*/}

BUILDROOT_GITHASH="$(cat buildroot_githash)"
BUILDROOT_GITHASH="${BUILDROOT_GITHASH:0:8}"

BUILD="$(cat build)"

cat <<EOF >${TARGET_DIR}/etc/issue
Welcome to nerves on CHIP
EOF
