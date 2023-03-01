#! /bin/bash

INITIAL_PATH=$(pwd)
./mpegts_tcp_1_receiver.sh > /dev/null 2>&1 &
cd ../quic_forwarder/
./start_server.sh > /dev/null 2>&1 &
./start_client.sh > /dev/null 2>&1 &
cd $INITIAL_PATH
sleep 5
./mpegts_tcp_2_sender.sh && pkill -9 ffplay