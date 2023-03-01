#! /bin/bash

mptcpize run ./mpegts_tcp_1_receiver.sh > /dev/null 2>&1 &
mptcpize run ./mpegts_tcp_2_sender.sh 3333 && pkill -9 ffplay