#!/bin/bash

DEMO_PATH=~/cs193-lecture-demo/lecture4

clean() {
  if [[ -e $DEMO_PATH ]]; then
    rm -rf $DEMO_PATH
  fi
}

remote_setup() {
  mkdir -p $DEMO_PATH
  remote_path=$DEMO_PATH"/remote"
  mkdir -p $remote_path
  touch $remote_path"/code.c"
  echo -e "int main(void) {\n  /* Put some code in here*/\n  return 0;\n}" >> $remote_path"/code.c"
  mkdir $remote_path"/folder_to_download/"
  touch $remote_path"/folder_to_download/content.c"
  echo -e "int main(void) {\n  char msg[50] = \"This is content.c\";\n  return 0;\n}" >> $remote_path"/folder_to_download/content.c"
}

local_setup() {
  mkdir -p $DEMO_PATH
  local_path=$DEMO_PATH"/local"
  mkdir -p $local_path
  mkdir $local_path"/folder_to_upload/"
  touch $local_path"/folder_to_upload/other_code.c"
  echo -e "int main(void) {\n  char msg[50] = \"This is other_code.c\";\n  return 0;\n}" >> $local_path"/folder_to_upload/other_code.c"
}

main() {
  case $1 in
    remote)
      remote_setup
    ;;
    local)
      local_setup
    ;;
    clean)
      clean
    ;;
    *)
     echo "Error: Invalid option"
    ;;
  esac

  exit 0
}

main $1

