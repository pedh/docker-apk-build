#!/bin/sh
#
# Run the first time to setup keys
#

set -e

doas chown packager:packager ~/.abuild/
abuild-keygen -a -i

