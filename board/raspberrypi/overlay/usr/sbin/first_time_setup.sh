# !/bin/sh

systemctl mask systemd-rfkill.service
systemctl enable rfkill_unblock.timer
systemctl enable wpa_supplicant.timer
systemctl enable udhcpc.service
systemctl enable ship-control.service
systemctl enable ship-net-bridge.service
