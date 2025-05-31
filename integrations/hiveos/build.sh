#!/usr/bin/env bash

NAME="cryptix_miner_hive_sheet_v029"
VERSION="v0.2.9"
MINERBIN="cryptix-miner"

mkdir -p $NAME
cp h-manifest.conf *.sh $MINERBIN $NAME/
tar czf $NAME.tar.gz $NAME
