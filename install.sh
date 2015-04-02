#!/bin/bash
#
# Docker installation under Debian 7.6
#
# Copyright (c) 2014-2015, Jimmy Beaudoin
#
# Permission to use, copy, modify, and/or distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

echo ""
echo "---------------------------------"
echo "Updating the system..."
echo "---------------------------------"
echo ""

sudo apt-get update
sudo apt-get -y upgrade

echo ""
echo "---------------------------------"
echo "Adding Docker sources repos..."
echo "---------------------------------"
echo ""

echo "deb https://get.docker.io/ubuntu docker main" | sudo tee -a /etc/apt/sources.list.d/docker.list >/dev/null

echo ""
echo "---------------------------------"
echo "Installing apt-transport-https..."
echo "---------------------------------"
echo ""

sudo apt-get install apt-transport-https

echo ""
echo "---------------------------------"
echo "Adding Docker repos keys..."
echo "---------------------------------"
echo ""

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9

echo ""
echo "---------------------------------"
echo "Installing Docker..."
echo "---------------------------------"
echo ""

sudo apt-get update
sudo apt-get -y install lxc-docker

echo ""
echo "---------------------------------"
echo "Done!"
echo "---------------------------------"
echo ""