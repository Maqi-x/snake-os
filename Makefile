CC = gcc
AS = nasm
LD = ld

CFLAGS = -Wall -Wextra -m32 -ffreestanding -I src/include -nostdlib -fno-stack-protector -c
ASFLAGS = -f elf32
LDFLAGS = -m elf_i386 -T linker.ld

BUILD_DIR = build
OUT_DIR = out
OBJ_DIR = $(BUILD_DIR)/obj
ISO_DIR = $(BUILD_DIR)/iso

SRCS = $(wildcard src/*.c)
SRCAS = $(wildcard src/*.asm)

OBJS = $(patsubst src/%.c, $(OBJ_DIR)/%.o, $(SRCS))
OBJS += $(patsubst src/%.asm, $(OBJ_DIR)/%.o, $(SRCAS))

KERNEL = $(BUILD_DIR)/snake-os.bin
ISO = $(OUT_DIR)/snake-os.iso

.PHONY: all clean run

all: $(ISO)
$(ISO): $(KERNEL)
	@echo "Creating ISO..."
	@mkdir -p $(ISO_DIR)/boot/grub
	@mkdir -p $(OUT_DIR)
	@cp $(KERNEL) $(ISO_DIR)/boot/
	@echo 'menuentry "Run Snake" {' > $(ISO_DIR)/boot/grub/grub.cfg
	@echo '    terminal_output console' >> $(ISO_DIR)/boot/grub/grub.cfg
	@echo '    multiboot /boot/snake-os.bin' >> $(ISO_DIR)/boot/grub/grub.cfg
	@echo '}' >> $(ISO_DIR)/boot/grub/grub.cfg
	@grub-mkrescue -o $(ISO) $(ISO_DIR)
	@echo -e "Success! ISO created at $(ISO)"

$(KERNEL): $(OBJS)
	@mkdir -p $(dir $@)
	$(LD) $(LDFLAGS) -o $@ $(OBJS)

$(OBJ_DIR)/%.o: src/%.c
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) $< -o $@
$(OBJ_DIR)/%.o: src/%.asm
	@mkdir -p $(dir $@)
	$(AS) $(ASFLAGS) $< -o $@

clean:
	rm -rf $(BUILD_DIR) $(OUT_DIR)
run: $(ISO)
	qemu-system-i386 -cdrom $(ISO)
