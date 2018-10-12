#!/usr/bin/env python
# encoding: utf-8

# https://pynput.readthedocs.io/en/latest/mouse.html#monitoring-the-mouse

from pynput import keyboard
from pynput import mouse
from pynput.keyboard import Key

def on_move(x, y):
    print(f'mouse_move {x},{y}')

def on_click(x, y, button, pressed):
    if not pressed:  # log on release
        print(f'click {x},{y}')

def on_scroll(x, y, dx, dy):
    print(f'scroll {x},{y}')


def on_release(key):
    print(f'key {key}')


mouse_listener = mouse.Listener(
    on_move=on_move,
    on_click=on_click,
    on_scroll=on_scroll,
)
keyboard_listener = keyboard.Listener(
    on_release=on_release,
)

mouse_listener.start()
keyboard_listener.start()

try:
    mouse_listener.join()
    keyboard_listener.join()
finally:
    mouse_listener.stop()
    keyboard_listener.join()

