#!/bin/bash

make_folder() {
  if [[ -e "$1" ]]; then
    mkdir -p "$2/"
    mv "$1" "$2"
    echo "$1" already exists. Moving to "$2"
  fi

  mkdir -p "$1"
}


create_java_file() {
  echo "public class "$1" {
      public static void main(Strings[] args) {
          System.out.printf(\"Hello world! This is %s file\n\", "$1");
      }
  }" > $2$1.java
}


create_c_file() {
  echo "#include <stdio.h>

  int main (int argc, char *argv[]) {
    printf(\"Welcome to CS193! This is %s file\n\", "$1");
    return 0;
  }" > $2$1.c
}


create_cpp_file() {
  echo "#include <iostream>

  int main (int argc, char *argv[]) {
    std::cout << \"Welcome to CS193! This is "$1" file\" << std::endl;
    return 0;
  }" > $2$1.cpp
}

main() {
  echo "========== Init lecture 2 folder=========="
  make_folder ~/cs193-lecture-demo/lecture2 ~/cs193-lecture-demo-backup/

  echo "==========Deploying java files=========="
  mkdir -p ~/cs193-lecture-demo/lecture2/java/
  java_files=("HelloWorld" "ByeWorld" "ProjectVersionOne" "ProjectVersionTwo" "ProjectVersionFinal" "ProjectVersionFinalFinal" "ProjectVersionFinalFinalFinalActuallyFinal")
  for file_name in ${java_files[@]}; do
    create_java_file "$file_name" ~/cs193-lecture-demo/lecture2/java/
    echo ""$file_name".java created"
  done

  echo "==========Deploying C files=========="
  mkdir -p ~/cs193-lecture-demo/lecture2/c/
  c_files=("doubly_linked_list" "signly_linked_list" "array_list" "malloc")
  for file_name in ${c_files[@]}; do
    create_c_file "$file_name" ~/cs193-lecture-demo/lecture2/c/
    echo ""$file_name".c created"
  done

  echo "==========Deploying cpp files=========="
  mkdir -p ~/cs193-lecture-demo/lecture2/cpp/
  cpp_files=("HelloWorld" "ByeWorld" "WhatUpWorld")
  for file_name in ${cpp_files[@]}; do
    create_cpp_file "$file_name" ~/cs193-lecture-demo/lecture2/cpp/
    echo ""$file_name".cpp created"
  done
}

main
echo "==========EOF=========="
