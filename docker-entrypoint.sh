#!/bin/sh

# simple service using nc
echo -e "HTTP/1.1 200 OK\n\nHello, World!" | nc -l -p 900 &

# Wait for the service to start
sleep 1

cat /etc/hosts

# Try to reach the service using curl
curl http://localhost:900
