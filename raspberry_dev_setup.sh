#!/usr/bin/env sh

# MIT License
#
# Copyright (c) 2020 NunchakusLei
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#
#
# This script will install bash, git, tmux, vim, and netdata


### Install sofewares
sudo apt-get install -y bash git tmux vim


### Netdata
bash <(curl -Ss https://my-netdata.io/kickstart.sh) --dont-wait


### Setup Cool Vim configurations
git clone https://github.com/NunchakusLei/cool-vim-config.git
cd cool-vim-config
bash setup.sh
cd -

# Remove Vim configure folder
rm -rf cool-vim-config

# Make sure cool vim setup is compatible with tmux
echo "" >> ~/.bashrc
echo "# Tmux" >> ~/.bashrc
echo "#export TERM=screen-256color" >> ~/.bashrc
echo "export TERM=xterm-256color" >> ~/.bashrc


### Activate configurations on Pi
source ~/.bashrc


