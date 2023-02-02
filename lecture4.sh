#!/bin/bash


DEMO_PATH=~/cs193-lecture-demo/lecture4

main() {
  if [[ -e $DEMO_PATH ]]; then
    rm -rf $DEMO_PATH
  fi
  mkdir -p $DEMO_PATH
  touch $DEMO_PATH"/code.c"
  mkdir $DEMO_PATH"/folder_to_download/"
  touch $DEMO_PATH"/folder_to_download/content.c"

}

