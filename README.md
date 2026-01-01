<div align="center"><img width="746" height="428" alt="image" src="https://github.com/user-attachments/assets/4cd6e4b8-ae38-4083-949c-843e5d689122" /></div>


# Snake OS

The Snake Game, but as an standalone x86 operating system working in [protected mode](https://en.wikipedia.org/wiki/Protected_mode).

The project is focused on low-level development and demonstrates how to build an OS from scratch: from bootloading and memory initialization to VGA rendering and handling keyboard input without relying on any underlying operating system.

## Features

- boots directly on hardware without Linux/Windows
- written in low-level system code for the x86 architecture
- VGA text mode rendering used for the game board
- direct keyboard handling (no BIOS interaction after initialization)
- extremely small memory footprint
- includes a fully playable Snake game as the core OS task

## System requirements

- Any [x86](https://en.wikipedia.org/wiki/X86) or [x86_64](https://en.wikipedia.org/wiki/X86-64) CPU
- GPU with **VGA text mode** support
- at least **1 KB RAM**
- firmware supporting legacy boot

## Getting started

First let's:

- **Download the ISO**: `go to GitHub Releases and download the latest ISO`

*or*

- **Compile the OS**: `clone the repo and run ./build.sh (Makefile is theoritically faster and better for development, but ./build.sh takes care of dependencies and builds the ISO, whereas Makefile does not do this)`

Then run the OS with this command: `qemu-system-x86_64 -cdrom snake-os.iso`.

> [!TIP]
> If you have a Windows machine, [download a normal operating system](https://endof10.org) or try to get it working for over 6 hours.

> [!TIP]
> If your machine supports virtualization, you can append the `-enable-kvm` flag to make it faster, but SnakeOS is such a simple OS that it won't really change anything.

## Credits

The creator would like to thank the following for helping to make this OS:

- [All people contributing to this project](https://github.com/Maqi-x/snake-os/graphs/contributors)
- [OS-Dev Wiki](https://wiki.osdev.org) for helping with creating this OS
- [AurorOS](https://github.com/Interpuce/AurorOS) for a build script (`dep_install.sh` and `build.sh`)

## License

snake-os is licensed under the [GNU General Public License v3](/LICENSE).
