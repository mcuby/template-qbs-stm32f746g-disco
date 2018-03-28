#!/bin/bash
clear

echo '############################# DEBUGGER #######################################'
DIR_OPENOCD=/home/user/openocd/0.10.0-201701241841/bin
DIR_BOARD=../scripts/board/
TARGET=stm32f7discovery.cfg

cd $DIR_OPENOCD

echo '############################# VERSION OPENOCD ################################'
sudo ./openocd --version
echo '############################# STM32F746G-DISCO ###############################'
sudo ./openocd -f $DIR_BOARD/$TARGET


#sudo ./openocd -f $DIR_BOARD/$TARGET \
#        -c init -c targets -c "halt" \
#        -c "flash write_image erase ${FIRMWARE}" \
#        -c "verify_image ${FIRMWARE}" \
#        -c "reset run" -c shutdown
