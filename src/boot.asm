; boot.asm configures everything (including Multiboot Header required by GRUB
; and other bootloaders to see snake-os) and loads the kernel main function
; from /src/main.c

bits 32

; Multiboot Header section. Required by some bootloaders (including GRUB, that
; snake-os uses in the current state) to see binary as operating system.
section .multiboot
    align 4
    dd 0x1BADB002
    dd 0x00
    dd -(0x1BADB002 + 0x00)

section .text

; The main function where the snake game starts. It is also declared in
; linker script (linker.ld), defined in /src/main.c
; file.
global start
extern smain

start:
    cli ; Clear interrupts
    call smain ; Call the snake main function (from /src/main.c)
    hlt ; Halt the proccessor
