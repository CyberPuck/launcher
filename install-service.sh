#!/bin/sh
sudo cp gunicorn.service /etc/systemd/system/

sudo systemctl daemon-reload
sudo systemctl enable gunicorn
sudo systemctl start gunicorn