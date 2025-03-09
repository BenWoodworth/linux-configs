This script turns off the LEDs on the keyboard whenever the computer sleeps, and then turns them on again after resuming. I was having trouble specifically with my PS/2 keyboard, with it remaining vibrantly lit after my computer dozed off and finding no way to fix that through my system's UEFI (disabling wake-by-keyboard, etc.).

To install:
```bash
sudo cp keyboard-leds.sh /lib/systemd/system-sleep/keyboard-leds.sh
sudo chmod +x /lib/systemd/system-sleep/keyboard-leds.sh
```

