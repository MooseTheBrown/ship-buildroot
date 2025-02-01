# !/bin/sh

systemctl mask systemd-rfkill.service
systemctl enable rfkill_unblock.timer
systemctl enable wpa_supplicant.timer
systemctl enable udhcpc.service
systemctl enable ship-control.service
systemctl enable ship-position.service
systemctl enable ship-net-bridge.service
systemctl enable mediamtx.service
systemctl enable rpicam-vid.service
chmod 0600 /root/.ssh/id_rsa
systemctl enable sshtun.service
