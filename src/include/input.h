#ifndef INPUT_H
#define INPUT_H

#include "defs.h"
#include "ports.h"

static inline byte readscancode() {
    return inb(0x60); 
}

enum {
    KEYCODE_ENTER = 0x1C,
    KEYCODE_SPACE = 0x39,
    KEYCODE_ESC   = 0x01,

    KEYCODE_W     = 0x11,
    KEYCODE_A     = 0x1E,
    KEYCODE_S     = 0x1F,
    KEYCODE_D     = 0x20,
};

static inline byte released(byte scancode) {
    if (scancode & 0x80) {
        return scancode & 0x7F;
    }
    return 0x0;
}

static inline byte pressed(byte scancode) {
    if (scancode & 0x80) {
        return 0x0;
    }
    return scancode & 0x7F;
}

#endif // INPUT_H

