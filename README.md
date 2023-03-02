# Streaming using ffmpeg

## About

In this repo you will find the commands to stream video using ffmpeg using different application and transport layer protocols.

The scripts are named as:

    appProto_transportProto_executionOrder_role.sh

Where:

* appProto is the application protocol that will be used for the stream
* transportProto is the transport protocol that will be used for the stream
* executionOrder is the order in which this script should be run compared with the other role. "x" means the order is not relevant, any order is possible.
* role is the role this script execute. It can be sender or receiver.

There are also three scripts for adapt a traditional stream to one that uses a multi path transport protocol:

* stream_mptcp.sh will transform a mpegts_tcp stream to use mptcp.
* stream_multi_udp.sh will transform a mpegts_udp stream to use multiple udp sockets.
* stream_mpquic.sh will transporm a mpegts_tcp stram to use mpquic.

## Requirements

* Install ffmpeg
* <https://github.com/imt-atlantique-procom/quic_forwarder>
* <https://github.com/imt-atlantique-procom/multi_udp_forwarder>
