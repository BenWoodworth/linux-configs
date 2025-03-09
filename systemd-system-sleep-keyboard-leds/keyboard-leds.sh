#!/bin/bash

LED_PATH="/sys/class/leds"
STATE_FILE="/run/keyboard-leds.state"

case "$1" in
    pre)
        # Save the state of enabled LEDs and turn them off
        rm -f "$STATE_FILE"
        for led in "$LED_PATH"/input*::*; do
            if [[ "$led" =~ (capslock|numlock|scrolllock) ]]; then
                if [[ -f "$led/brightness" && $(cat "$led/brightness") -ne 0 ]]; then
                    echo "$led" >> "$STATE_FILE"
                    echo 0 | tee "$led/brightness" > /dev/null
                fi
            fi
        done
        ;;
        
    post)
        # Restore the saved LED states
        if [[ -f "$STATE_FILE" ]]; then
            while read -r led; do
                echo 1 | tee "$led/brightness" > /dev/null
            done < "$STATE_FILE"
            rm -f "$STATE_FILE"
        fi
        ;;
esac

