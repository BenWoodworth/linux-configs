Since Fedora switched its default audio service from pulseaudio to pipewire, audio has taken a few seconds to actually start playing. Be it opening a YouTube video, starting a game, etc., the content will start without sound while the audio system resumes from being suspended. This configuration prevents it from automatically suspending in the first place.

See the [ALSA configuration](https://pipewire.pages.freedesktop.org/wireplumber/daemon/configuration/alsa.html#alsa-configuration):

> ### session.suspend-timeout-seconds
>
> This option configures a different suspend timeout on the node. By default this is 5 seconds. For some devices (HiFi amplifiers, for example) it might make sense to set a higher timeout because they might require some time to restart after being idle.
>
> A value of `0` disables suspend for a node and will leave the ALSA device busy. The device can then be manually suspended with `pactl suspend-sink|source`.
> 
> Type: integer

<hr />

To install for your user:
```bash
mkdir -p ~/.config/wireplumber/wireplumber.conf.d/
cp disable-audio-suspend.conf ~/.config/wireplumber/wireplumber.conf.d/
```

To install system-wide:
```bash
sudo mkdir -p /etc/wireplumber/wireplumber.conf.d/
sudo cp disable-audio-suspend.conf /etc/wireplumber/wireplumber.conf.d/
```

