#!/bin/bash
BASEDIR=$(dirname "$0")
echo "Site location: ${BASEDIR}"
cd "$(dirname "$0")"
php $BASEDIR/cecil.phar serve -v --open
