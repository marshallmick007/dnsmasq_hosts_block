#!/usr/bin/env bash

SOURCE_FILE=http://someonewhocares.org/hosts/zero/hosts
DESTINATION_FILE=/usr/local/etc/banner_hosts

if [ -f $DESTINATION_FILE ] ; then
  rm $DESTINATION_FILE
fi

if [ -f $DESTINATION_FILE ] ; then
  echo "WARNING: $DESTINATION_FILE already exists, skipping update."
else
  curl -s -o - $SOURCE_FILE > $DESTINATION_FILE


fi
