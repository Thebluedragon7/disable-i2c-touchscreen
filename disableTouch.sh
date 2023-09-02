#!/bin/bash

DEVICE_ID="XXXX:XXXX:XXXX.XXXX"


SERVICE_FILE="/etc/systemd/system/disable-touch.service"

cat <<EOF | sudo tee "$SERVICE_FILE" > /dev/null
[Unit]
Description=Disable I2C Touch Screen on Startup

[Service]
Type=oneshot
ExecStart=/bin/bash -c 'echo "$DEVICE_ID" > /sys/bus/hid/drivers/hid-multitouch/unbind'

[Install]
WantedBy=multi-user.target
EOF

sudo systemctl daemon-reload

sudo systemctl enable disable-touch.service
sudo systemctl start disable-touch.service
