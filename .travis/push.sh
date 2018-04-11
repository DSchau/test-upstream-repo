#!/bin/sh

setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
}

bump_version() {
  npm --no-git-tag-version version from-git -m "chore: release version %s [skip ci]"
}

push_files() {
  git push origin HEAD:master
}

setup_git()
bump_version()
push_files()