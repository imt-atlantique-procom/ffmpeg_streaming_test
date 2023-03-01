#! /bin/bash

INITIAL_PATH=$(pwd)
./mpegts_udp_x_receiver.sh > /dev/null 2>&1 &
cd ../multi_udp_forwarder/
./start_forwarder.sh &
cd $INITIAL_PATH
./mpegts_udp_x_sender.sh && pkill -9 ffplay