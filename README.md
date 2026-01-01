# snake-os

snake-os is an x86 operating system that runs a standalone version of the classic **Snake** game directly on bare metal in [protected mode](https://en.wikipedia.org/wiki/Protected_mode).  
The project is focused on low-level development and demonstrates how to build an OS from scratch: from bootloading and memory initialization to VGA rendering and handling keyboard input without relying on any underlying operating system.

---

## Features

- boots directly on hardware without Linux/Windows
- written in low-level system code for the x86 architecture
- VGA text mode rendering used for the game board
- direct keyboard handling (no BIOS interaction after initialization)
- extremely small memory footprint
- includes a fully playable Snake game as the core OS task

---

## System requirements

- Any [x86](https://en.wikipedia.org/wiki/X86) or [x86_64](https://en.wikipedia.org/wiki/X86-64) CPU
- GPU with **VGA text mode** support
- at least **1 KB RAM**
- legacy boot mode (**UEFI boot not supported yet**)

---

## Building

There are two ways to build *snake-os*:

1. **Development build (fast)**  
   Use the `Makefile` for quick builds during development. This generates the `.elf` kernel file without creating a full ISO:

   ```sh
   make
   ```

2. **Production build (ISO)**
   Use the `build.sh` script to create a bootable ISO image suitable for running on real hardware or emulators:

   ```sh
   ./build.sh
   ```

The `build.sh` script also installs any required dependencies automatically on most major Linux distributions.

You can download the prebuilt ISO from the
[GitHub Releases page](https://github.com/Maqi-x/snake-os/releases).

---

## License

snake-os is licensed under the [GNU General Public License v3](/LICENSE).

