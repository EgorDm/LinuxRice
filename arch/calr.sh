#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd $parent_path
sudo chmod +x install-minimal.sh
./install-minimal.sh
sudo chmod +x install-extra.sh
./install-extra.sh
#sudo chmod +x install-specific.sh
#./install-specific.sh
sudo chmod +x config-std.sh
./config-std.sh
sudo chmod +x config-extra.sh
./config-extra.sh
sudo chmod +x gen-wifi-std.sh
./gen-wifi-std.sh
echo "Finalized"
sudo shutdown -r now
