#!/bin/bash

#            ---------------------------------------------------
#                              Evilip Framework                                                  
#            ---------------------------------------------------
#                Copyright (C) <2020-2021>  <EvilDevilWasi>
#
#        This program is free software: you can redistribute it and/or modify
#        it under the terms of the GNU General Public License as published by
#        the Free Software Foundation, either version 3 of the License, or
#        any later version.
#
#        This program is distributed in the hope that it will be useful,
#        but WITHOUT ANY WARRANTY; without even the implied warranty of
#        MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#        GNU General Public License for more details.
#
#        You should have received a copy of the GNU General Public License
#        along with this program.  If not, see <http://www.gnu.org/licenses/>.

G="\033[1;34m[*] \033[0m"
E="\033[1;31m[-] \033[0m"

if [[ "$1" = "" ]]
then
echo "Usage: launch.sh <application>"
exit
fi

echo -e ""$G"Launching "$1"..."

{
adb shell monkey -p $1 -v 500
} &> /dev/null