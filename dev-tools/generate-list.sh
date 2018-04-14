#!/bin/bash
# Generator Script
# Created by: Mitchell Krog (mitchellkrog@gmail.com)
# Copyright: Mitchell Krog - https://github.com/mitchellkrogza
# Repo Url: https://github.com/mitchellkrogza/Suspicious.Snooping.Sniffing.Hacking.IP.Addresses

# MIT License

# Copyright (c) 2017 Mitchell Krog - mitchellkrog@gmail.com
# https://github.com/mitchellkrogza

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# ******************
# Set Some Variables
# ******************
SRC1=$TRAVIS_BUILD_DIR/input-sources/fail2ban-ip-blacklist-srv1.list
SRC2=$TRAVIS_BUILD_DIR/input-sources/fail2ban-ip-blacklist-srv2.list
#SRC3=$TRAVIS_BUILD_DIR/input-sources/fail2ban-ip-blacklist-srv3.list
#SRC4=$TRAVIS_BUILD_DIR/input-sources/fail2ban-ip-blacklist-srv4.list
#SRC5=$TRAVIS_BUILD_DIR/input-sources/fail2ban-ip-blacklist-srv5.list
#SRC6=$TRAVIS_BUILD_DIR/input-sources/fail2ban-ip-blacklist-srv6.list
SRCOUT=$TRAVIS_BUILD_DIR/ips.list

# First truncate our File

sudo truncate -s 0 $SRCOUT

# Join Files Together and Sort for Duplicates

sudo cat $SRC1 $SRC2 > $SRCOUT
sort -u $SRCOUT -o $SRCOUT

# Format the file to Unix format

sudo dos2unix $SRCOUT

