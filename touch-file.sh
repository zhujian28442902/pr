#!/bin/bash
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

url=$(git config --get remote.origin.url)
branch=$(git status|grep 'On branch'|awk '{print $NF}')

if [[ "$url" = http* ]] ;
then
    filename=$(git config --get remote.origin.url |sed 's/.*.com\/\(.*\)\/.*/\1/').${branch}.$(date '+%Y%m%d%H%M%S')
else
    filename=$(git config --get remote.origin.url|sed 's/.*com:\(.*\)\/.*/\1/').${branch}.$(date '+%Y%m%d%H%M%S')
fi

echo creating file $filename

touch $filename
