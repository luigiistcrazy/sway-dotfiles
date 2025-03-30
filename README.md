### My very cool sway dotfiles with a shit ton of eye candy!

![image](https://github.com/user-attachments/assets/a8492830-6554-4b21-b26c-6b03ababbaae)

### Prerequisites:

- GNU/Linux
- Sway
- i3status
- playerctl
- polkit-kde
- network-manager-applet
- blueman
- wl-clipboard
- grim
- slurp
- wmenu-run (optional, can be changed)
- dolphin (optional, can be changed)
- ghostty (optional, can be changed)
- Iosevka Font (optional, can be changed)

### Install

1. Clone repo and copy files

```sh
cd
git clone git@github.com:luigiistcrazy/sway-dotfiles
cp sway-dotfiles/* .config
```

3. Press Meta+Shift+C to reload sway config
4. Profit?

### Get Uptime to work

Create /etc/systemd/system/i3status.service:

```sh
[Unit]
Description=Updater for i3status
After=multi-user.target

[Service]
ExecStart=/bin/sh /home/<username>/.config/i3status/i3status.sh
Restart=always
User=<username>

[Install]
WantedBy=multi-user.target
```

Create /etc/systemd/system/i3status.timer:

```sh
[Unit]
Description=Runs i3status updater every second

[Timer]
OnBootSec=1s
OnUnitActiveSec=1s
Unit=i3status.service

[Install]
WantedBy=timers.target
```

Run `doas systemctl enable --now i3status.timer` (replace doas with sudo if you're still at sudo [cringe btw])

## Notes:

Replace my monitor configs with yours in .config/sway/config (line 218-225)
