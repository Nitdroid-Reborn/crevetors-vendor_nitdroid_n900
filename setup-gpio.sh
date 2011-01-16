#!/bin/sh

# set up the GPIO's for N900 modem:
echo 70 >/sys/class/gpio/export
echo low >/sys/class/gpio/gpio70/direction
echo 0 >/sys/class/gpio/gpio70/value
echo 73 >/sys/class/gpio/export
echo high >/sys/class/gpio/gpio73/direction
echo 0 >/sys/class/gpio/gpio73/value
echo 74 >/sys/class/gpio/export
echo low >/sys/class/gpio/gpio74/direction
echo 75 >/sys/class/gpio/export
echo low >/sys/class/gpio/gpio75/direction
echo 157 >/sys/class/gpio/export
echo low >/sys/class/gpio/gpio157/direction
echo 0 >/sys/class/gpio/gpio157/value

# create symlinks for ofono N900 plugin
mkdir /dev/cmt
ln -s /sys/class/gpio/gpio70 /dev/cmt/cmt_apeslpx
ln -s /sys/class/gpio/gpio74 /dev/cmt/cmt_en
ln -s /sys/class/gpio/gpio73 /dev/cmt/cmt_rst_rq
ln -s /sys/class/gpio/gpio75 /dev/cmt/cmt_rst
ln -s /sys/class/gpio/gpio157 /dev/cmt/cmt_bsi
