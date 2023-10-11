#!/bin/bash
# Bluetooth speaker indicator for polybar.
# Change the MAC address to the MAC of your speaker, after it is paired.

source ~/.config/scripts/colors.sh

bluetooth_mini() {
	SPEAKER_CONNECTED=$(bt-device -i 41:42:21:87:F6:95 | grep Connected | xargs | cut -d ' ' -f 2)
	if [ "$SPEAKER_CONNECTED" -eq 1 ]; then
		speaker_indicator="${orange}󰓃"
	else
		speaker_indicator="${dark0_soft}󰓃"
	fi
	echo $speaker_indicator
}
bluetooth_mini