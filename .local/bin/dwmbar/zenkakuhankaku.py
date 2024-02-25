#!/usr/bin/env python
import evdev
from evdev import ecodes
import subprocess

# Define your touchpad device path (replace with your device path)
touchpad_device = '/dev/input/event4'

# Create an event object for the touchpad
touchpad = evdev.InputDevice(touchpad_device)

# Define the key sequence for a double-tap action
double_tap_sequence = [125, 29, 85, 85, 29, 125]

# Initialize a list to track events
event_list = []

# Function to check for a matching sequence
def check_sequence():
    if event_list == double_tap_sequence:
        return True
    return False

# Initialize touchpad state to unlocked
touchpad_enabled = True

for event in touchpad.read_loop():
    if event.type == ecodes.EV_KEY:
        event_list.append(event.code)

        # Check for the matching double-tap sequence
        if len(event_list) > len(double_tap_sequence):
            event_list.pop(0)

        if check_sequence():
            # Toggle the touchpad state
            if touchpad_enabled:
                subprocess.call(['xinput', '--disable', 'UNIW0001:00 093A:1336 Touchpad'])
                touchpad_enabled = False
            else:
                subprocess.call(['xinput', '--enable', 'UNIW0001:00 093A:1336 Touchpad'])
                touchpad_enabled = True
            event_list = []  # Clear the event list

