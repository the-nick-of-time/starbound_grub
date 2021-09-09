#!/bin/bash

mkdir -p /usr/share/grub/themes/starbound
tar x -C /usr/share/grub/themes/starbound -f starbound_grub2.tar.gz

cp grub /etc/default/grub

update-grub
