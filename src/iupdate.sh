#!/bin/bash

SECONDS=0

echo "> sudo apt update"
sudo apt update
echo -e "\n> sudo apt upgrade"
sudo apt upgrade
echo -e "\n> sudo apt -y autoremove"
sudo apt -y autoremove

time=${SECONDS}
echo -e "\nAll completed. This processing took ${time} seconds."
