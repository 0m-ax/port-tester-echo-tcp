#!/bin/bash
cp -f port-tester-echo-tcp.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable port-tester-echo-tcp.service
systemctl start port-tester-echo-tcp.service
iptables -t nat -A PREROUTING -p tcp --dport 1:65535 -j REDIRECT --to-ports 7777