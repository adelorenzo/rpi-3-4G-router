#!/bin/bash

mbimcli -d /dev/cdc-wdm0 --set-radio-state=on
sleep 1
mbimcli -d /dev/cdc-wdm0 --register-automatic
sleep 1
wvdial >/dev/null 2>&1 &
