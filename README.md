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

## Building

To build *snake-os*, simply run:

```sh
make
```

The `Makefile` will automatically:
- Compile and link the kernel into `build/snake-os.bin`.
- Create a bootable ISO image at `out/snake-os.iso`.

if you don't have dependencies you can use script that installs them automatically:
```sh
./dep_install.sh
```

You can also run the OS directly in QEMU with:

```sh
make run
```

You can download the prebuilt ISO from the
[GitHub Releases page](https://github.com/Maqi-x/snake-os/releases).


## Credits

The creator would like to thank the following for helping to make this OS:

- [All people contributing to this project](https://github.com/Maqi-x/snake-os/graphs/contributors)
- [OS-Dev Wiki](https://wiki.osdev.org) for helping with creating this OS
- [AurorOS](https://github.com/Interpuce/AurorOS) for a build script (`dep_install.sh` and `build.sh`)

## License

snake-os is licensed under the [GNU General Public License v3](/LICENSE).
