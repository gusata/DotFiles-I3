#!/bin/bash
# Bluetooth speaker indicator for polybar.
# Change the MAC address to the MAC of your speaker, after it is paired.

source ~/.config/scripts/colors.sh

bluetooth_speaker() {
	SPEAKER_CONNECTED=$(bt-device -i 64:68:76:20:32:83 | grep Connected | xargs | cut -d ' ' -f 2)
	if [ "$SPEAKER_CONNECTED" -eq 1 ]; then
		speaker_indicator="${primary}󰋋"
	else
		speaker_indicator="${dark0_soft}󰋋"
	fi
	echo $speaker_indicator
}
bluetooth_speaker