#!/bin/sh

echo "Load FPGA Ver 1.0"

# Check if /dev/spidev2.1 exists with a timeout of 5 seconds
timeout=10
elapsed=0
while [ ! -e /dev/spidev2.1 ]; do
  if [ $elapsed -ge $timeout ]; then
    echo "Error: /dev/spidev2.1 not found after $timeout seconds."
    exit 1
  fi
  sleep 1
  elapsed=$((elapsed + 1))
done

# Load FPGA binary
loadfpga -c /dev/spidev2.1 -p /etc/decoderfpga.bin
if [ $? -ne 0 ]; then
  echo "Error: Failed to load FPGA binary."
  exit 1
fi

# Bring up the eth1 interface
ifconfig eth1 up
if [ $? -ne 0 ]; then
  echo "Error: Failed to bring up eth1 interface."
  exit 1
fi

echo "Done"

