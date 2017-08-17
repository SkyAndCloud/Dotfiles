#!/bin/bash
echo $@ > /tmp/$$.txt
ekho -f /tmp/$$.txt -o /tmp/$$.wav
play -q /tmp/$$.wav 2>/dev/null
rm /tmp/$$.txt /tmp/$$.wav
