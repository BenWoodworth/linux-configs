The `steam-devices` package currently doesn't give access to Nintendo Switch Joy-Cons. I have a PR open to have them added [here](https://github.com/ValveSoftware/steam-devices/pull/63), but until that is merged, I have the rules added manually.

I have it numbered `50-` so it can be overwritten by the higher-numbered `/lib/udev/rules.d/60-steam-input.rules` file installed by `steam-devices`

To install:
```
sudo cp 50-steam-input-joy-con.rules /etc/udev/rules.d/50-steam-input-joy-con.rules
```

