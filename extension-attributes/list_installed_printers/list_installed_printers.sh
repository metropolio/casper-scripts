#!/bin/sh

echo "<result>$(lpstat -t | grep "device for" | awk -F "device for " '{print $2}')</result>"
