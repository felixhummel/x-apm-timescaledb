Exported dashboard; want to verify by re-deployment?
```
dc stop grafana; dc rm -f grafana; dc up -d
```

mouse wheel up
```
EVENT type 4 (ButtonPress)
    device: 24 (24)
    detail: 4
    flags: emulated
    root: 665.84/402.95
    event: 665.84/402.95
    buttons:
    modifiers: locked 0x10 latched 0 base 0 effective: 0x10
    group: locked 0 latched 0 base 0 effective: 0
    valuators:
    windows: root 0x2a8 event 0x2a8 child 0xcf0281
EVENT type 5 (ButtonRelease)
    device: 24 (24)
    detail: 4
    flags: emulated
    root: 665.84/402.95
    event: 665.84/402.95
    buttons: 4
    modifiers: locked 0x10 latched 0 base 0 effective: 0x10
    group: locked 0 latched 0 base 0 effective: 0
    valuators:
    windows: root 0x2a8 event 0x2a8 child 0xcf0281
EVENT type 16 (RawButtonRelease)
    device: 2 (24)
    detail: 4
    flags: emulated
    valuators:
```
