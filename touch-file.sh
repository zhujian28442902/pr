#!/bin/bash - 
#===============================================================================
#
#          FILE: touch-file.sh
# 
#         USAGE: ./touch-file.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: James Zhu (), zhujian0805@gmail.com
#  ORGANIZATION: ZJ
#       CREATED: 2016年11月06日 19:15
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error


filename=$(git config --get remote.origin.url |sed 's/.*.com\/\(.*\)\/.*/\1/').$(date '+%Y%m%d%H%M%S')

echo creating file $filename

touch $filename
