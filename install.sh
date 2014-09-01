#!/bin/bash

# Docker installation under Debian 7.6

# Copyright 2014 Jimmy Beaudoin

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#    http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

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