#!/bin/bash

$JAVA_HOME/bin/jlink \
  --no-header-files \
  --no-man-pages \
  --module-path $JAVA_HOME/jmods \
  --compress $WERCKER_JLINK_COMPRESS \
  --output $WERCKER_JLINK_OUTPUT \
  --add-modules $WERCKER_JLINK_ADD_MODULES
