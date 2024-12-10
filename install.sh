#!/bin/bash
echo "Installing..."
echo "Author Thien-Minh Nguyen (thienminh.npn@gmail.com), forked from htts://github.com/wang-chen/auto"
sudo cp git-prompt.sh ~/
sudo cp git-completion.bash ~/
sudo cp myros.sh ~/
# sudo cp rules/*  /etc/udev/rules.d/
sudo cat ./.bashrc >> ~/.bashrc
# sudo cp gitme.sh /usr/bin/
sudo cp ccb.sh /usr/bin/ccb
# sudo chmod +x /usr/bin/gitme.sh
echo "done."
