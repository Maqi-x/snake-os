<div align="center"><img width="741" height="427" alt="image" src="https://github.com/user-attachments/assets/f77c47db-b4fa-403f-904f-003a50e8e9a5" /></div>

# Snake OS

The Snake Game. Now rewritted to run without OS... I mean without bloat.

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
