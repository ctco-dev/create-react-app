#!/bin/sh

set -e

# detect this script directory
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

MASK="WEB_APP_"
MARKER="%%%ENV_MARKER%%%"
IN="$SCRIPTPATH/nginx.conf"
OUT="/etc/nginx/conf.d/default.conf"

sh $SCRIPTPATH/patch-nginx-config.sh $MASK $MARKER $IN $OUT

nginx -g "daemon off;"
