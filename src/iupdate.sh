#!/bin/bash

SECONDS=0

echo "> sudo apt update"
sudo apt update

echo -e "\n> sudo apt -y upgrade"
sudo apt -y upgrade

echo -e "\n> sudo apt -y autoremove"
sudo apt -y autoremove

time=${SECONDS}
echo -e "\nAll are completed. This process took ${time} seconds."
