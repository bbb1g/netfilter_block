#!/bin/sh

sudo iptables -F
sudo iptables -A OUTPUT -p tcp -j NFQUEUE
sudo iptables -A INPUT -p tcp -j NFQUEUE

sudo ./nfqnl_test 0 &
