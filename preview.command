#!/bin/bash
cd "$(dirname "$0")" || exit 1
echo "Site location: $(pwd)"
php cecil.phar serve -v --open
