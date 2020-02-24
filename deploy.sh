#!/usr/bin/env bash
if [[ -d ../public ]]
then
  echo "Cleaning destination directory ... "
  rm -r ../public
  echo "done"
fi
echo "Generating web site ... "
hugo -d ../public
echo "done"

echo "Copying files to remote server ... "
scp -r ../public/* bauer@roboducks.htl-leonding.ac.at:/home/bauer/site
echo "done"
