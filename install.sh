#!/bin/bash
echo "Installing..."
echo "Author Thien-Minh Nguyen (thienminh.npn@gmail.com), forked from htts://github.com/wang-chen/auto"
sudo cp git-prompt.sh ~/
sudo cp git-completion.bash ~/
sudo cp myros.sh ~/
sudo cp rules/*  /etc/udev/rules.d/
sudo cat ./.bashrc >> ~/.bashrc
sudo cp ck.sh /usr/bin/
sudo chmod +x /usr/bin/ck.sh
echo "done."
