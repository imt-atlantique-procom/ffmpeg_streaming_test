ffmpeg -f v4l2 -i /dev/video0 -pix_fmt yuv420p -preset ultrafast -b:v 600k -f rtsp -rtsp_transport udp rtsp://localhost:8888/live.sdp