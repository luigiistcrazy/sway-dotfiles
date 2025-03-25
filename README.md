Put files/folders in $HOME/.config/ and edit them to your liking.

**Change monitor layout in sway/config line 221 - 227**

Create following systemd units/timers for uptime on i3status to display properly:

**`i3status.service`**

```
[Unit]
Description=Updater for i3status
After=multi-user.target

[Service]
ExecStart=/bin/sh /home/<YOUR USERNAME>/.config/i3status/i3status.sh
Restart=always
User=<YOUR USERNAME>

[Install]
WantedBy=multi-user.target
```

**`i3status.timer`**

```
[Unit]
Description=Runs i3status updater every second

[Timer]
OnBootSec=1s
OnUnitActiveSec=1s
Unit=i3status.service

[Install]
WantedBy=timers.target
```

Put both in `/etc/systemd/system/` and run

```sh
sudo systemctl daemon-reload
sudo systemctl enable --now i3status.timer
```
