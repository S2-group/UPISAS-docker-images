#!/usr/bin/env bash
set -ex

git clone https://github.com/lesunb/bsn.git ~/Desktop/BSN

cd ~/Desktop/BSN

rosdep install --from-paths src --ignore-src -r -y

catkin_make

