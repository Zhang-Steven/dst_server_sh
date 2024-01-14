#!/bin/bash

ufw allow 10888/udp
ufw allow 10999/udp
ufw allow 27017/udp
ufw allow 27017/tcp
ufw allow 8767/udp
ufw allow 8767/tcp
ufw enable
ufw status

