#!/bin/sh

set -e

MASK="$1"
MARKER="$2"
FILE_IN="$3"
FILE_OUT="$4"

# detect this script directory
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

[ -z $MASK -o -z $MARKER -o -z $FILE_IN -o -z $FILE_OUT ] && echo "Failed. Wrong aargs. Proper usage: $0 MASK MARKER FILE_IN FILE_OUT" >&2 && exit 1
[ ! -r $FILE_IN ] && echo "Failed. File $FILE_IN is not exist or not readable." >&2 && exit 1

# welcome to backslash hell (escaping backslashes (for sed and nginx), quotes (for sed and nginx), slashes (for sed))
ENV_JSON=$(sh $SCRIPTPATH/env-to-json.sh $MASK | sed 's/\\/\\\\\\\\/g' | sed "s/'/\\\\\\\'/g" | sed "s#/#\\\/#g")

sed "s/$MARKER/$ENV_JSON/" $FILE_IN > $FILE_OUT
