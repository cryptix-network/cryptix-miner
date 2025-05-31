#!/usr/bin/env bash

cd "$(dirname "$0")"

[ -t 1 ] && . colors 

. h-manifest.conf

echo $CUSTOM_NAME
echo $CUSTOM_LOG_BASENAME
echo $CUSTOM_CONFIG_FILENAME

[[ -z $CUSTOM_LOG_BASENAME ]] && echo "No CUSTOM_LOG_BASENAME is set" && exit 1
[[ -z $CUSTOM_CONFIG_FILENAME ]] && echo "No CUSTOM_CONFIG_FILENAME is set" && exit 1
[[ ! -f $CUSTOM_CONFIG_FILENAME ]] && echo "Custom config $CUSTOM_CONFIG_FILENAME is not found" && exit 1

./$CUSTOM_MINERBIN $(< "$CUSTOM_CONFIG_FILENAME") "$@" 2>&1 | tee "$CUSTOM_LOG_BASENAME.log"
