#!/bin/bash
modprobe vmmon
modprobe vmnet
modprobe vmci
systemctl start vmware-networks.service
